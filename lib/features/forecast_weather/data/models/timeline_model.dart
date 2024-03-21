import 'package:weather_app/features/forecast_weather/domain/entity/daily_weather_data_entity.dart';
import 'package:weather_app/features/forecast_weather/domain/entity/timeline_entity.dart';
import 'package:weather_app/features/realtime_weather/domain/entity/weather_data_entity.dart';

import '../../../realtime_weather/data/models/data_model.dart';

class TimelineInfo extends TimelineEntity {
  TimelineInfo({
    super.minutely,
    super.hourly,
    super.daily,
  });

  @override
  TimelineEntity fromJson(Map<String, dynamic> json) => TimelineInfo(
        minutely: json["minutely"] == null
            ? []
            : List<WeatherDataEntity>.from(
                json["minutely"]!.map((x) => Data().fromJson(x))),
        hourly: json["hourly"] == null
            ? []
            : List<WeatherDataEntity>.from(
                json["hourly"]!.map((x) => Data().fromJson(x))),
        daily: json["daily"] == null
            ? []
            : List<WeatherDataEntity>.from(
                json["daily"]!.map((x) => DailyData().fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() => {};
}
