import '../../../../core/location/location_entity.dart';
import 'weather_data_entity.dart';

abstract class RealtimeWeatherEntity {
  int? statusCode;
  WeatherDataEntity? data;
  LocationEntity? location;

  RealtimeWeatherEntity({this.data, this.location, this.statusCode});

  RealtimeWeatherEntity fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson();
}
