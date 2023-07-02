import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:seather/features/fetch_weather/data/data_sources/weather_remote.dart';

import '../../data/models/data_model.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());

  final _remote = WeatherRemote();

  Future<Position> getLocation() async {
    try {
      Position pos = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      return pos;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future byCity(String city) async {
    try {
      emit(WeatherLoading());
      Data resp = await _remote.loc(city);
      emit(WeatherSuccess(resp));
    } catch (e) {
      emit(WeatherFailed(e.toString()));
    }
  }

  Future byCoords() async {
    try {
      emit(WeatherLoading());
      Position pos = await getLocation();
      double lat = pos.latitude;
      double lon = pos.longitude;
      Data resp = await _remote.coords(lat, lon);
      emit(WeatherSuccess(resp));
    } catch (e) {
      emit(WeatherFailed(e.toString()));
    }
  }
}
