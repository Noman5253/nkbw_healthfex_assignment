import 'package:weather_app/features/realtime_weather/domain/entity/weather_value_entity.dart';

class Values extends WeatherValueEntity {
  Values({
    super.cloudBase,
    super.cloudCeiling,
    super.cloudCover,
    super.dewPoint,
    super.evapotranspiration,
    super.freezingRainIntensity,
    super.humidity,
    super.iceAccumulation,
    super.iceAccumulationLwe,
    super.precipitationProbability,
    super.pressureSurfaceLevel,
    super.rainAccumulation,
    super.rainAccumulationLwe,
    super.rainIntensity,
    super.sleetAccumulation,
    super.sleetAccumulationLwe,
    super.sleetIntensity,
    super.snowAccumulation,
    super.snowAccumulationLwe,
    super.snowDepth,
    super.snowIntensity,
    super.temperature,
    super.temperatureApparent,
    super.uvHealthConcern,
    super.uvIndex,
    super.visibility,
    super.weatherCode,
    super.windDirection,
    super.windGust,
    super.windSpeed,
  });

  @override
  WeatherValueEntity fromJson(Map<String, dynamic> json) {
    return Values(
      cloudBase: json["cloudBase"]?.toDouble(),
      cloudCeiling: json["cloudCeiling"]?.toDouble(),
      cloudCover: json["cloudCover"]?.toDouble(),
      dewPoint: json["dewPoint"]?.toDouble(),
      evapotranspiration: json["evapotranspiration"]?.toDouble(),
      freezingRainIntensity: json["freezingRainIntensity"]?.toDouble(),
      humidity: json["humidity"]?.toDouble(),
      iceAccumulation: json["iceAccumulation"]?.toDouble(),
      iceAccumulationLwe: json["iceAccumulationLwe"]?.toDouble(),
      precipitationProbability: json["precipitationProbability"]?.toDouble(),
      pressureSurfaceLevel: json["pressureSurfaceLevel"]?.toDouble(),
      rainAccumulation: json["rainAccumulation"]?.toDouble(),
      rainAccumulationLwe: json["rainAccumulationLwe"]?.toDouble(),
      rainIntensity: json["rainIntensity"]?.toDouble(),
      sleetAccumulation: json["sleetAccumulation"]?.toDouble(),
      sleetAccumulationLwe: json["sleetAccumulationLwe"]?.toDouble(),
      sleetIntensity: json["sleetIntensity"]?.toDouble(),
      snowAccumulation: json["snowAccumulation"]?.toDouble(),
      snowAccumulationLwe: json["snowAccumulationLwe"]?.toDouble(),
      snowDepth: json["snowDepth"]?.toDouble(),
      snowIntensity: json["snowIntensity"]?.toDouble(),
      temperature: json["temperature"]?.toDouble(),
      temperatureApparent: json["temperatureApparent"]?.toDouble(),
      uvHealthConcern: json["uvHealthConcern"]?.toDouble(),
      uvIndex: json["uvIndex"]?.toDouble(),
      visibility: json["visibility"]?.toDouble(),
      weatherCode: json["weatherCode"]?.toDouble(),
      windDirection: json["windDirection"]?.toDouble(),
      windGust: json["windGust"]?.toDouble(),
      windSpeed: json["windSpeed"]?.toDouble(),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}
