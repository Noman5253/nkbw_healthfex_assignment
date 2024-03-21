import 'package:weather_app/core/location/location_entity.dart';
import 'package:weather_app/features/forecast_weather/data/models/timeline_model.dart';
import 'package:weather_app/features/forecast_weather/domain/entity/weather_forecast_entity.dart';

class WeatherForecastInfo extends WeatherForecastEntity {
  WeatherForecastInfo({
    super.statusCode,
    super.timelines,
    super.location,
  });

  @override
  WeatherForecastEntity fromJson(Map<String, dynamic> json) =>
      WeatherForecastInfo(
        statusCode: json["statusCode"],
        timelines: json["timelines"] == null
            ? null
            : TimelineInfo().fromJson(json["timelines"]),
        location: json["location"] == null
            ? null
            : LocationInfo().fromJson(json["location"]),
      );

  @override
  Map<String, dynamic> toJson() => {
        "timelines": timelines?.toJson(),
        "location": location?.toJson(),
      };
}
