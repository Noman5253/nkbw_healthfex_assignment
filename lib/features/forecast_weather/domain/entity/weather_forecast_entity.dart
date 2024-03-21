import '../../../../core/location/location_entity.dart';
import 'timeline_entity.dart';

abstract class WeatherForecastEntity {
  int? statusCode;
  TimelineEntity? timelines;
  LocationEntity? location;

  WeatherForecastEntity({this.location, this.timelines, this.statusCode});

  WeatherForecastEntity fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson();
}
