part of 'data_model.dart';

class Wind {
  Wind({required this.speed, required this.deg});
  late final double speed;
  late final int deg;

  Wind.fromJson(Map<String, dynamic> json) {
    speed = json['speed'];
    deg = json['deg'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['speed'] = speed;
    data['deg'] = deg;
    return data;
  }
}
