part of 'utils.dart';

class HttpUtil {
  final Dio _dio = Dio();

  HttpUtil._internal();
  static final _singleton = HttpUtil._internal();
  factory HttpUtil() => _singleton;

  Dio get dio => _dio;

  static Future fetch(String path) async {
    try {
      final resp = await _singleton._dio.get(Uri.parse(path).toString());
      return resp;
    } on DioException catch (e) {
      throw Exception(e.message);
    } catch (e) {
      throw Exception(e);
    }
  }
}
