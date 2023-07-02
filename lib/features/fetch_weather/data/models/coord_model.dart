part of 'data_model.dart';

class Coord {
  Coord({
    required this.lon,
    required this.lat,
  });
  late final double lon;
  late final double lat;

  Coord.fromJson(Map<String, dynamic> json) {
    lon = json['lon'];
    lat = json['lat'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['lon'] = lon;
    data['lat'] = lat;
    return data;
  }
}
