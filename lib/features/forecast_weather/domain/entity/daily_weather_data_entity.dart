import 'package:weather_app/features/forecast_weather/domain/entity/daily_weather_value_entity.dart';
import 'package:weather_app/features/realtime_weather/domain/entity/weather_data_entity.dart';

class DailyData extends WeatherDataEntity {
  DailyData({
    super.time,
    super.values,
  });

  @override
  WeatherDataEntity fromJson(Map<String, dynamic> json) {
    return DailyData(
      time: json["time"],
      values: DailyValue().fromJson(json["values"])
    );
  }

  @override
  Map<String, dynamic> toJson() => {
    
  };
}
