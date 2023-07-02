import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seather/features/fetch_weather/data/data_sources/weather_remote.dart';

import '../../data/models/data_model.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());

  final _remote = WeatherRemote();

  Future byCity(String city) async {
    try {
      emit(WeatherLoading());
      final resp = await _remote.loc(city);
      emit(WeatherSuccess(resp));
    } catch (e) {
      emit(WeatherFailed(e.toString()));
    }
  }

  Future byCoords(String lat, String lon) async {
    try {
      emit(WeatherLoading());
      final resp = await _remote.coords(lat, lon);
      emit(WeatherSuccess(resp));
    } catch (e) {
      emit(WeatherFailed(e.toString()));
    }
  }
}
