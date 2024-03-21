import 'package:weather_app/features/realtime_weather/data/models/value_model.dart';
import 'package:weather_app/features/realtime_weather/domain/entity/weather_data_entity.dart';

class Data extends WeatherDataEntity {
  Data({
    super.time,
    super.values
  });

  @override
  WeatherDataEntity fromJson(Map<String, dynamic> json) {
    return Data(
      time: json["time"],
      values: Values().fromJson(json["values"])
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}
