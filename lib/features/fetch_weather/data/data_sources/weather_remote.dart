import 'package:seather/features/fetch_weather/data/models/data_model.dart';
import 'package:seather/utils/utils.dart';

import '../../../../config/env/env.dart';

class WeatherRemote {
  Future<Data> loc(String city) async {
    final url = '${Env.url}q=$city&appid=${Env.key}&units=metric';
    try {
      final resp = await HttpUtil.fetch(url);
      final data = Data.fromJson(resp);
      return data;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<Data> coords(double lat, double lon) async {
    final url = '${Env.url}lat=$lat&lon=$lon&appid=${Env.key}&units+metric';
    try {
      final resp = await HttpUtil.fetch(url);
      final data = Data.fromJson(resp);
      return data;
    } catch (e) {
      throw Exception(e);
    }
  }
}
