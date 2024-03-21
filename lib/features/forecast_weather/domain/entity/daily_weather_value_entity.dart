import 'package:weather_app/features/realtime_weather/domain/entity/weather_value_entity.dart';

class DailyValue extends WeatherValueEntity {
  DailyValue({
    super.cloudBaseAvg,
    super.cloudBaseMax,
    super.cloudBaseMin,
    super.cloudCeilingAvg,
    super.cloudCeilingMax,
    super.cloudCeilingMin,
    super.cloudCoverAvg,
    super.cloudCoverMax,
    super.cloudCoverMin,
    super.dewPointAvg,
    super.dewPointMax,
    super.dewPointMin,
    super.evapotranspirationAvg,
    super.evapotranspirationMax,
    super.evapotranspirationMin,
    super.evapotranspirationSum,
    super.freezingRainIntensityAvg,
    super.freezingRainIntensityMax,
    super.freezingRainIntensityMin,
    super.humidityAvg,
    super.humidityMax,
    super.humidityMin,
    super.iceAccumulationAvg,
    super.iceAccumulationLweAvg,
    super.iceAccumulationLweMax,
    super.iceAccumulationLweMin,
    super.iceAccumulationLweSum,
    super.iceAccumulationMax,
    super.iceAccumulationMin,
    super.iceAccumulationSum,
    super.moonriseTime,
    super.moonsetTime,
    super.precipitationProbabilityAvg,
    super.precipitationProbabilityMax,
    super.precipitationProbabilityMin,
    super.pressureSurfaceLevelAvg,
    super.pressureSurfaceLevelMax,
    super.pressureSurfaceLevelMin,
    super.rainAccumulationAvg,
    super.rainAccumulationLweAvg,
    super.rainAccumulationLweMax,
    super.rainAccumulationLweMin,
    super.rainAccumulationMax,
    super.rainAccumulationMin,
    super.rainAccumulationSum,
    super.rainIntensityAvg,
    super.rainIntensityMax,
    super.rainIntensityMin,
    super.sleetAccumulationAvg,
    super.sleetAccumulationLweAvg,
    super.sleetAccumulationLweMax,
    super.sleetAccumulationLweMin,
    super.sleetAccumulationLweSum,
    super.sleetAccumulationMax,
    super.sleetAccumulationMin,
    super.sleetIntensityAvg,
    super.sleetIntensityMax,
    super.sleetIntensityMin,
    super.snowAccumulationAvg,
    super.snowAccumulationLweAvg,
    super.snowAccumulationLweMax,
    super.snowAccumulationLweMin,
    super.snowAccumulationLweSum,
    super.snowAccumulationMax,
    super.snowAccumulationMin,
    super.snowAccumulationSum,
    super.snowDepthAvg,
    super.snowDepthMax,
    super.snowDepthMin,
    super.snowDepthSum,
    super.snowIntensityAvg,
    super.snowIntensityMax,
    super.snowIntensityMin,
    super.sunriseTime,
    super.sunsetTime,
    super.temperatureApparentAvg,
    super.temperatureApparentMax,
    super.temperatureApparentMin,
    super.temperatureAvg,
    super.temperatureMax,
    super.temperatureMin,
    super.uvHealthConcernAvg,
    super.uvHealthConcernMax,
    super.uvHealthConcernMin,
    super.uvIndexAvg,
    super.uvIndexMax,
    super.uvIndexMin,
    super.visibilityAvg,
    super.visibilityMax,
    super.visibilityMin,
    super.weatherCodeMax,
    super.weatherCodeMin,
    super.windDirectionAvg,
    super.windGustAvg,
    super.windGustMax,
    super.windGustMin,
    super.windSpeedAvg,
    super.windSpeedMax,
    super.windSpeedMin,
  });

  @override
  WeatherValueEntity fromJson(Map<String, dynamic> json) {
    return DailyValue(
      cloudBaseAvg: json["cloudBaseAvg"]?.toDouble(),
      cloudBaseMax: json["cloudBaseMax"]?.toDouble(),
      cloudBaseMin: json["cloudBaseMin"]?.toDouble(),
      cloudCeilingAvg: json["cloudCeilingAvg"]?.toDouble(),
      cloudCeilingMax: json["cloudCeilingMax"]?.toDouble(),
      cloudCeilingMin: json["cloudCeilingMin"]?.toDouble(),
      cloudCoverAvg: json["cloudCoverAvg"]?.toDouble(),
      cloudCoverMax: json["cloudCoverMax"]?.toDouble(),
      cloudCoverMin: json["cloudCoverMin"]?.toDouble(),
      dewPointAvg: json["dewPointAvg"]?.toDouble(),
      dewPointMax: json["dewPointMax"]?.toDouble(),
      dewPointMin: json["dewPointMin"]?.toDouble(),
      evapotranspirationAvg: json["evapotranspirationAvg"]?.toDouble(),
      evapotranspirationMax: json["evapotranspirationMax"]?.toDouble(),
      evapotranspirationMin: json["evapotranspirationMin"]?.toDouble(),
      evapotranspirationSum: json["evapotranspirationSum"]?.toDouble(),
      freezingRainIntensityAvg: json["freezingRainIntensityAvg"]?.toDouble(),
      freezingRainIntensityMax: json["freezingRainIntensityMax"]?.toDouble(),
      freezingRainIntensityMin: json["freezingRainIntensityMin"]?.toDouble(),
      humidityAvg: json["humidityAvg"]?.toDouble(),
      humidityMax: json["humidityMax"]?.toDouble(),
      humidityMin: json["humidityMin"]?.toDouble(),
      iceAccumulationAvg: json["iceAccumulationAvg"]?.toDouble(),
      iceAccumulationLweAvg: json["iceAccumulationLweAvg"]?.toDouble(),
      iceAccumulationLweMax: json["iceAccumulationLweMax"]?.toDouble(),
      iceAccumulationLweMin: json["iceAccumulationLweMin"]?.toDouble(),
      iceAccumulationLweSum: json["iceAccumulationLweSum"]?.toDouble(),
      iceAccumulationMax: json["iceAccumulationMax"]?.toDouble(),
      iceAccumulationMin: json["iceAccumulationMin"]?.toDouble(),
      iceAccumulationSum: json["iceAccumulationSum"]?.toDouble(),
      moonriseTime: json["moonriseTime"],
      moonsetTime: json["moonsetTime"],
      precipitationProbabilityAvg:
          json["precipitationProbabilityAvg"]?.toDouble(),
      precipitationProbabilityMax:
          json["precipitationProbabilityMax"]?.toDouble(),
      precipitationProbabilityMin:
          json["precipitationProbabilityMin"]?.toDouble(),
      pressureSurfaceLevelAvg: json["pressureSurfaceLevelAvg"]?.toDouble(),
      pressureSurfaceLevelMax: json["pressureSurfaceLevelMax"]?.toDouble(),
      pressureSurfaceLevelMin: json["pressureSurfaceLevelMin"]?.toDouble(),
      rainAccumulationAvg: json["rainAccumulationAvg"]?.toDouble(),
      rainAccumulationLweAvg: json["rainAccumulationLweAvg"]?.toDouble(),
      rainAccumulationLweMax: json["rainAccumulationLweMax"]?.toDouble(),
      rainAccumulationLweMin: json["rainAccumulationLweMin"]?.toDouble(),
      rainAccumulationMax: json["rainAccumulationMax"]?.toDouble(),
      rainAccumulationMin: json["rainAccumulationMin"]?.toDouble(),
      rainAccumulationSum: json["rainAccumulationSum"]?.toDouble(),
      rainIntensityAvg: json["rainIntensityAvg"]?.toDouble(),
      rainIntensityMax: json["rainIntensityMax"]?.toDouble(),
      rainIntensityMin: json["rainIntensityMin"]?.toDouble(),
      sleetAccumulationAvg: json["sleetAccumulationAvg"]?.toDouble(),
      sleetAccumulationLweAvg: json["sleetAccumulationLweAvg"]?.toDouble(),
      sleetAccumulationLweMax: json["sleetAccumulationLweMax"]?.toDouble(),
      sleetAccumulationLweMin: json["sleetAccumulationLweMin"]?.toDouble(),
      sleetAccumulationLweSum: json["sleetAccumulationLweSum"]?.toDouble(),
      sleetAccumulationMax: json["sleetAccumulationMax"]?.toDouble(),
      sleetAccumulationMin: json["sleetAccumulationMin"]?.toDouble(),
      sleetIntensityAvg: json["sleetIntensityAvg"]?.toDouble(),
      sleetIntensityMax: json["sleetIntensityMax"]?.toDouble(),
      sleetIntensityMin: json["sleetIntensityMin"]?.toDouble(),
      snowAccumulationAvg: json["snowAccumulationAvg"]?.toDouble(),
      snowAccumulationLweAvg: json["snowAccumulationLweAvg"]?.toDouble(),
      snowAccumulationLweMax: json["snowAccumulationLweMax"]?.toDouble(),
      snowAccumulationLweMin: json["snowAccumulationLweMin"]?.toDouble(),
      snowAccumulationLweSum: json["snowAccumulationLweSum"]?.toDouble(),
      snowAccumulationMax: json["snowAccumulationMax"]?.toDouble(),
      snowAccumulationMin: json["snowAccumulationMin"]?.toDouble(),
      snowAccumulationSum: json["snowAccumulationSum"]?.toDouble(),
      snowDepthAvg: json["snowDepthAvg"]?.toDouble(),
      snowDepthMax: json["snowDepthMax"]?.toDouble(),
      snowDepthMin: json["snowDepthMin"]?.toDouble(),
      snowDepthSum: json["snowDepthSum"]?.toDouble(),
      snowIntensityAvg: json["snowIntensityAvg"]?.toDouble(),
      snowIntensityMax: json["snowIntensityMax"]?.toDouble(),
      snowIntensityMin: json["snowIntensityMin"]?.toDouble(),
      sunriseTime: json["sunriseTime"],
      sunsetTime: json["sunsetTime"],
      temperatureApparentAvg: json["temperatureApparentAvg"]?.toDouble(),
      temperatureApparentMax: json["temperatureApparentMax"]?.toDouble(),
      temperatureApparentMin: json["temperatureApparentMin"]?.toDouble(),
      temperatureAvg: json["temperatureAvg"]?.toDouble(),
      temperatureMax: json["temperatureMax"]?.toDouble(),
      temperatureMin: json["temperatureMin"]?.toDouble(),
      uvHealthConcernAvg: json["uvHealthConcernAvg"]?.toDouble(),
      uvHealthConcernMax: json["uvHealthConcernMax"]?.toDouble(),
      uvHealthConcernMin: json["uvHealthConcernMin"]?.toDouble(),
      uvIndexAvg: json["uvIndexAvg"]?.toDouble(),
      uvIndexMax: json["uvIndexMax"]?.toDouble(),
      uvIndexMin: json["uvIndexMin"]?.toDouble(),
      visibilityAvg: json["visibilityAvg"]?.toDouble(),
      visibilityMax: json["visibilityMax"]?.toDouble(),
      visibilityMin: json["visibilityMin"]?.toDouble(),
      weatherCodeMax: json["weatherCodeMax"]?.toDouble(),
      weatherCodeMin: json["weatherCodeMin"]?.toDouble(),
      windDirectionAvg: json["windDirectionAvg"]?.toDouble(),
      windGustAvg: json["windGustAvg"]?.toDouble(),
      windGustMax: json["windGustMax"]?.toDouble(),
      windGustMin: json["windGustMin"]?.toDouble(),
      windSpeedAvg: json["windSpeedAvg"]?.toDouble(),
      windSpeedMax: json["windSpeedMax"]?.toDouble(),
      windSpeedMin: json["windSpeedMin"]?.toDouble(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
    
  };
}