import 'package:weather_app/features/realtime_weather/domain/entity/weather_data_entity.dart';

abstract class TimelineEntity {
  List<WeatherDataEntity>? minutely;
  List<WeatherDataEntity>? hourly;
  List<WeatherDataEntity>? daily;

  TimelineEntity({
    this.minutely,
    this.hourly,
    this.daily,
  });

  TimelineEntity fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson();
}
