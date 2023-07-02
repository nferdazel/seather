part of 'data_model.dart';

class Clouds {
  Clouds({required this.all});
  late final int all;

  Clouds.fromJson(Map<String, dynamic> json) {
    all = json['all'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['all'] = all;
    return data;
  }
}
