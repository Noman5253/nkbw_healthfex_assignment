import 'package:weather_app/core/location/location_entity.dart';
import 'package:weather_app/features/realtime_weather/domain/entity/realtime_weather_entity.dart';

import 'data_model.dart';

class RealtimeWeatherInfo extends RealtimeWeatherEntity {
  RealtimeWeatherInfo({
    super.statusCode,
    super.data,
    super.location,
  });

  @override
  RealtimeWeatherEntity fromJson(Map<String, dynamic> json) =>
      RealtimeWeatherInfo(
        statusCode: json["statusCode"],
        data: json["data"] == null ? null : Data().fromJson(json["data"]),
        location: json["location"] == null
            ? null
            : LocationInfo().fromJson(json["location"]),
      );

  @override
  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
        "location": LocationInfo().toJson(),
      };
}
