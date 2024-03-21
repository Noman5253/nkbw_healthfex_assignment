import 'weather_value_entity.dart';

abstract class WeatherDataEntity {
  String? time;
  WeatherValueEntity? values;

  WeatherDataEntity({
    this.time,
    this.values,
  });

  WeatherDataEntity fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson();
}
