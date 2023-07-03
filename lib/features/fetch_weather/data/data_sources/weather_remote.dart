import '../../../../config/env/env.dart';
import '../../../../utils/util.dart';
import '../models/data_model.dart';

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
