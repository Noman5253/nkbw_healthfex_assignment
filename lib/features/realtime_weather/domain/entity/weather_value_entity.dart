abstract class WeatherValueEntity {
  double? cloudBase;
  double? cloudCeiling;
  double? cloudCover;
  double? dewPoint;
  double? evapotranspiration;
  double? freezingRainIntensity;
  double? humidity;
  double? iceAccumulation;
  double? iceAccumulationLwe;
  double? precipitationProbability;
  double? pressureSurfaceLevel;
  double? rainAccumulation;
  double? rainAccumulationLwe;
  double? rainIntensity;
  double? sleetAccumulation;
  double? sleetAccumulationLwe;
  double? sleetIntensity;
  double? snowAccumulation;
  double? snowAccumulationLwe;
  double? snowDepth;
  double? snowIntensity;
  double? temperature;
  double? temperatureApparent;
  double? uvHealthConcern;
  double? uvIndex;
  double? visibility;
  double? weatherCode;
  double? windDirection;
  double? windGust;
  double? windSpeed;
  double? cloudBaseAvg;
  double? cloudBaseMax;
  double? cloudBaseMin;
  double? cloudCeilingAvg;
  double? cloudCeilingMax;
  double? cloudCeilingMin;
  double? cloudCoverAvg;
  double? cloudCoverMax;
  double? cloudCoverMin;
  double? dewPointAvg;
  double? dewPointMax;
  double? dewPointMin;
  double? evapotranspirationAvg;
  double? evapotranspirationMax;
  double? evapotranspirationMin;
  double? evapotranspirationSum;
  double? freezingRainIntensityAvg;
  double? freezingRainIntensityMax;
  double? freezingRainIntensityMin;
  double? humidityAvg;
  double? humidityMax;
  double? humidityMin;
  double? iceAccumulationAvg;
  double? iceAccumulationLweAvg;
  double? iceAccumulationLweMax;
  double? iceAccumulationLweMin;
  double? iceAccumulationLweSum;
  double? iceAccumulationMax;
  double? iceAccumulationMin;
  double? iceAccumulationSum;
  String? moonriseTime;
  String? moonsetTime;
  double? precipitationProbabilityAvg;
  double? precipitationProbabilityMax;
  double? precipitationProbabilityMin;
  double? pressureSurfaceLevelAvg;
  double? pressureSurfaceLevelMax;
  double? pressureSurfaceLevelMin;
  double? rainAccumulationAvg;
  double? rainAccumulationLweAvg;
  double? rainAccumulationLweMax;
  double? rainAccumulationLweMin;
  double? rainAccumulationMax;
  double? rainAccumulationMin;
  double? rainAccumulationSum;
  double? rainIntensityAvg;
  double? rainIntensityMax;
  double? rainIntensityMin;
  double? sleetAccumulationAvg;
  double? sleetAccumulationLweAvg;
  double? sleetAccumulationLweMax;
  double? sleetAccumulationLweMin;
  double? sleetAccumulationLweSum;
  double? sleetAccumulationMax;
  double? sleetAccumulationMin;
  double? sleetIntensityAvg;
  double? sleetIntensityMax;
  double? sleetIntensityMin;
  double? snowAccumulationAvg;
  double? snowAccumulationLweAvg;
  double? snowAccumulationLweMax;
  double? snowAccumulationLweMin;
  double? snowAccumulationLweSum;
  double? snowAccumulationMax;
  double? snowAccumulationMin;
  double? snowAccumulationSum;
  double? snowDepthAvg;
  double? snowDepthMax;
  double? snowDepthMin;
  double? snowDepthSum;
  double? snowIntensityAvg;
  double? snowIntensityMax;
  double? snowIntensityMin;
  String? sunriseTime;
  String? sunsetTime;
  double? temperatureApparentAvg;
  double? temperatureApparentMax;
  double? temperatureApparentMin;
  double? temperatureAvg;
  double? temperatureMax;
  double? temperatureMin;
  double? uvHealthConcernAvg;
  double? uvHealthConcernMax;
  double? uvHealthConcernMin;
  double? uvIndexAvg;
  double? uvIndexMax;
  double? uvIndexMin;
  double? visibilityAvg;
  double? visibilityMax;
  double? visibilityMin;
  double? weatherCodeMax;
  double? weatherCodeMin;
  double? windDirectionAvg;
  double? windGustAvg;
  double? windGustMax;
  double? windGustMin;
  double? windSpeedAvg;
  double? windSpeedMax;
  double? windSpeedMin;

  WeatherValueEntity({
    this.cloudBase,
    this.cloudCeiling,
    this.cloudCover,
    this.dewPoint,
    this.evapotranspiration,
    this.freezingRainIntensity,
    this.humidity,
    this.iceAccumulation,
    this.iceAccumulationLwe,
    this.precipitationProbability,
    this.pressureSurfaceLevel,
    this.rainAccumulation,
    this.rainAccumulationLwe,
    this.rainIntensity,
    this.sleetAccumulation,
    this.sleetAccumulationLwe,
    this.sleetIntensity,
    this.snowAccumulation,
    this.snowAccumulationLwe,
    this.snowDepth,
    this.snowIntensity,
    this.temperature,
    this.temperatureApparent,
    this.uvHealthConcern,
    this.uvIndex,
    this.visibility,
    this.weatherCode,
    this.windDirection,
    this.windGust,
    this.windSpeed,
    this.cloudBaseAvg,
    this.cloudBaseMax,
    this.cloudBaseMin,
    this.cloudCeilingAvg,
    this.cloudCeilingMax,
    this.cloudCeilingMin,
    this.cloudCoverAvg,
    this.cloudCoverMax,
    this.cloudCoverMin,
    this.dewPointAvg,
    this.dewPointMax,
    this.dewPointMin,
    this.evapotranspirationAvg,
    this.evapotranspirationMax,
    this.evapotranspirationMin,
    this.evapotranspirationSum,
    this.freezingRainIntensityAvg,
    this.freezingRainIntensityMax,
    this.freezingRainIntensityMin,
    this.humidityAvg,
    this.humidityMax,
    this.humidityMin,
    this.iceAccumulationAvg,
    this.iceAccumulationLweAvg,
    this.iceAccumulationLweMax,
    this.iceAccumulationLweMin,
    this.iceAccumulationLweSum,
    this.iceAccumulationMax,
    this.iceAccumulationMin,
    this.iceAccumulationSum,
    this.moonriseTime,
    this.moonsetTime,
    this.precipitationProbabilityAvg,
    this.precipitationProbabilityMax,
    this.precipitationProbabilityMin,
    this.pressureSurfaceLevelAvg,
    this.pressureSurfaceLevelMax,
    this.pressureSurfaceLevelMin,
    this.rainAccumulationAvg,
    this.rainAccumulationLweAvg,
    this.rainAccumulationLweMax,
    this.rainAccumulationLweMin,
    this.rainAccumulationMax,
    this.rainAccumulationMin,
    this.rainAccumulationSum,
    this.rainIntensityAvg,
    this.rainIntensityMax,
    this.rainIntensityMin,
    this.sleetAccumulationAvg,
    this.sleetAccumulationLweAvg,
    this.sleetAccumulationLweMax,
    this.sleetAccumulationLweMin,
    this.sleetAccumulationLweSum,
    this.sleetAccumulationMax,
    this.sleetAccumulationMin,
    this.sleetIntensityAvg,
    this.sleetIntensityMax,
    this.sleetIntensityMin,
    this.snowAccumulationAvg,
    this.snowAccumulationLweAvg,
    this.snowAccumulationLweMax,
    this.snowAccumulationLweMin,
    this.snowAccumulationLweSum,
    this.snowAccumulationMax,
    this.snowAccumulationMin,
    this.snowAccumulationSum,
    this.snowDepthAvg,
    this.snowDepthMax,
    this.snowDepthMin,
    this.snowDepthSum,
    this.snowIntensityAvg,
    this.snowIntensityMax,
    this.snowIntensityMin,
    this.sunriseTime,
    this.sunsetTime,
    this.temperatureApparentAvg,
    this.temperatureApparentMax,
    this.temperatureApparentMin,
    this.temperatureAvg,
    this.temperatureMax,
    this.temperatureMin,
    this.uvHealthConcernAvg,
    this.uvHealthConcernMax,
    this.uvHealthConcernMin,
    this.uvIndexAvg,
    this.uvIndexMax,
    this.uvIndexMin,
    this.visibilityAvg,
    this.visibilityMax,
    this.visibilityMin,
    this.weatherCodeMax,
    this.weatherCodeMin,
    this.windDirectionAvg,
    this.windGustAvg,
    this.windGustMax,
    this.windGustMin,
    this.windSpeedAvg,
    this.windSpeedMax,
    this.windSpeedMin,
  });

  WeatherValueEntity fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson();
}

/**
 * 
 *        "cloudBase": null,
          "cloudCeiling": null,
          "cloudCover": 24,
          "dewPoint": -8.75,
          "evapotranspiration": 0.091,
          "freezingRainIntensity": 0,
          "humidity": 83,
          "iceAccumulation": 0,
          "iceAccumulationLwe": 0,
          "precipitationProbability": 0,
          "pressureSurfaceLevel": 1009.31,
          "rainAccumulation": 0,
          "rainAccumulationLwe": 0,
          "rainIntensity": 0,
          "sleetAccumulation": 0,
          "sleetAccumulationLwe": 0,
          "sleetIntensity": 0,
          "snowAccumulation": 0,
          "snowAccumulationLwe": 0,
          "snowDepth": 0,
          "snowIntensity": 0,
          "temperature": 3.06,
          "temperatureApparent": -2.21,
          "uvHealthConcern": 0,
          "uvIndex": 0,
          "visibility": 16,
          "weatherCode": 1100,
          "windDirection": 309.94,
          "windGust": 9.07,
          "windSpeed": 7.56
 * 
 *  factory Values.fromJson(Map<String, dynamic> json) => Values(
        cloudBaseAvg: json["cloudBaseAvg"]?.toDouble(),
        cloudBaseMax: json["cloudBaseMax"]?.toDouble(),
        cloudBaseMin: json["cloudBaseMin"],
        cloudCeilingAvg: json["cloudCeilingAvg"]?.toDouble(),
        cloudCeilingMax: json["cloudCeilingMax"]?.toDouble(),
        cloudCeilingMin: json["cloudCeilingMin"],
        cloudCoverAvg: json["cloudCoverAvg"]?.toDouble(),
        cloudCoverMax: json["cloudCoverMax"]?.toDouble(),
        cloudCoverMin: json["cloudCoverMin"],
        dewPointAvg: json["dewPointAvg"]?.toDouble(),
        dewPointMax: json["dewPointMax"]?.toDouble(),
        dewPointMin: json["dewPointMin"]?.toDouble(),
        evapotranspirationAvg: json["evapotranspirationAvg"]?.toDouble(),
        evapotranspirationMax: json["evapotranspirationMax"]?.toDouble(),
        evapotranspirationMin: json["evapotranspirationMin"]?.toDouble(),
        evapotranspirationSum: json["evapotranspirationSum"]?.toDouble(),
        freezingRainIntensityAvg: json["freezingRainIntensityAvg"],
        freezingRainIntensityMax: json["freezingRainIntensityMax"],
        freezingRainIntensityMin: json["freezingRainIntensityMin"],
        humidityAvg: json["humidityAvg"]?.toDouble(),
        humidityMax: json["humidityMax"]?.toDouble(),
        humidityMin: json["humidityMin"]?.toDouble(),
        iceAccumulationAvg: json["iceAccumulationAvg"],
        iceAccumulationLweAvg: json["iceAccumulationLweAvg"],
        iceAccumulationLweMax: json["iceAccumulationLweMax"],
        iceAccumulationLweMin: json["iceAccumulationLweMin"],
        iceAccumulationLweSum: json["iceAccumulationLweSum"],
        iceAccumulationMax: json["iceAccumulationMax"],
        iceAccumulationMin: json["iceAccumulationMin"],
        iceAccumulationSum: json["iceAccumulationSum"],
        moonriseTime: json["moonriseTime"],
        moonsetTime: json["moonsetTime"],
        precipitationProbabilityAvg: json["precipitationProbabilityAvg"]?.toDouble(),
        precipitationProbabilityMax: json["precipitationProbabilityMax"],
        precipitationProbabilityMin: json["precipitationProbabilityMin"],
        pressureSurfaceLevelAvg: json["pressureSurfaceLevelAvg"]?.toDouble(),
        pressureSurfaceLevelMax: json["pressureSurfaceLevelMax"]?.toDouble(),
        pressureSurfaceLevelMin: json["pressureSurfaceLevelMin"]?.toDouble(),
        rainAccumulationAvg: json["rainAccumulationAvg"]?.toDouble(),
        rainAccumulationLweAvg: json["rainAccumulationLweAvg"]?.toDouble(),
        rainAccumulationLweMax: json["rainAccumulationLweMax"]?.toDouble(),
        rainAccumulationLweMin: json["rainAccumulationLweMin"],
        rainAccumulationMax: json["rainAccumulationMax"]?.toDouble(),
        rainAccumulationMin: json["rainAccumulationMin"],
        rainAccumulationSum: json["rainAccumulationSum"]?.toDouble(),
        rainIntensityAvg: json["rainIntensityAvg"]?.toDouble(),
        rainIntensityMax: json["rainIntensityMax"]?.toDouble(),
        rainIntensityMin: json["rainIntensityMin"],
        sleetAccumulationAvg: json["sleetAccumulationAvg"],
        sleetAccumulationLweAvg: json["sleetAccumulationLweAvg"],
        sleetAccumulationLweMax: json["sleetAccumulationLweMax"],
        sleetAccumulationLweMin: json["sleetAccumulationLweMin"],
        sleetAccumulationLweSum: json["sleetAccumulationLweSum"],
        sleetAccumulationMax: json["sleetAccumulationMax"],
        sleetAccumulationMin: json["sleetAccumulationMin"],
        sleetIntensityAvg: json["sleetIntensityAvg"],
        sleetIntensityMax: json["sleetIntensityMax"],
        sleetIntensityMin: json["sleetIntensityMin"],
        snowAccumulationAvg: json["snowAccumulationAvg"],
        snowAccumulationLweAvg: json["snowAccumulationLweAvg"],
        snowAccumulationLweMax: json["snowAccumulationLweMax"],
        snowAccumulationLweMin: json["snowAccumulationLweMin"],
        snowAccumulationLweSum: json["snowAccumulationLweSum"],
        snowAccumulationMax: json["snowAccumulationMax"],
        snowAccumulationMin: json["snowAccumulationMin"],
        snowAccumulationSum: json["snowAccumulationSum"],
        snowDepthAvg: json["snowDepthAvg"],
        snowDepthMax: json["snowDepthMax"],
        snowDepthMin: json["snowDepthMin"],
        snowDepthSum: json["snowDepthSum"],
        snowIntensityAvg: json["snowIntensityAvg"],
        snowIntensityMax: json["snowIntensityMax"],
        snowIntensityMin: json["snowIntensityMin"],
        sunriseTime: json["sunriseTime"],
        sunsetTime: json["sunsetTime"],
        temperatureApparentAvg: json["temperatureApparentAvg"]?.toDouble(),
        temperatureApparentMax: json["temperatureApparentMax"]?.toDouble(),
        temperatureApparentMin: json["temperatureApparentMin"]?.toDouble(),
        temperatureAvg: json["temperatureAvg"]?.toDouble(),
        temperatureMax: json["temperatureMax"]?.toDouble(),
        temperatureMin: json["temperatureMin"]?.toDouble(),
        uvHealthConcernAvg: json["uvHealthConcernAvg"],
        uvHealthConcernMax: json["uvHealthConcernMax"],
        uvHealthConcernMin: json["uvHealthConcernMin"],
        uvIndexAvg: json["uvIndexAvg"],
        uvIndexMax: json["uvIndexMax"],
        uvIndexMin: json["uvIndexMin"],
        visibilityAvg: json["visibilityAvg"]?.toDouble(),
        visibilityMax: json["visibilityMax"]?.toDouble(),
        visibilityMin: json["visibilityMin"]?.toDouble(),
        weatherCodeMax: json["weatherCodeMax"],
        weatherCodeMin: json["weatherCodeMin"],
        windDirectionAvg: json["windDirectionAvg"]?.toDouble(),
        windGustAvg: json["windGustAvg"]?.toDouble(),
        windGustMax: json["windGustMax"]?.toDouble(),
        windGustMin: json["windGustMin"]?.toDouble(),
        windSpeedAvg: json["windSpeedAvg"]?.toDouble(),
        windSpeedMax: json["windSpeedMax"]?.toDouble(),
        windSpeedMin: json["windSpeedMin"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "cloudBaseAvg": cloudBaseAvg,
        "cloudBaseMax": cloudBaseMax,
        "cloudBaseMin": cloudBaseMin,
        "cloudCeilingAvg": cloudCeilingAvg,
        "cloudCeilingMax": cloudCeilingMax,
        "cloudCeilingMin": cloudCeilingMin,
        "cloudCoverAvg": cloudCoverAvg,
        "cloudCoverMax": cloudCoverMax,
        "cloudCoverMin": cloudCoverMin,
        "dewPointAvg": dewPointAvg,
        "dewPointMax": dewPointMax,
        "dewPointMin": dewPointMin,
        "evapotranspirationAvg": evapotranspirationAvg,
        "evapotranspirationMax": evapotranspirationMax,
        "evapotranspirationMin": evapotranspirationMin,
        "evapotranspirationSum": evapotranspirationSum,
        "freezingRainIntensityAvg": freezingRainIntensityAvg,
        "freezingRainIntensityMax": freezingRainIntensityMax,
        "freezingRainIntensityMin": freezingRainIntensityMin,
        "humidityAvg": humidityAvg,
        "humidityMax": humidityMax,
        "humidityMin": humidityMin,
        "iceAccumulationAvg": iceAccumulationAvg,
        "iceAccumulationLweAvg": iceAccumulationLweAvg,
        "iceAccumulationLweMax": iceAccumulationLweMax,
        "iceAccumulationLweMin": iceAccumulationLweMin,
        "iceAccumulationLweSum": iceAccumulationLweSum,
        "iceAccumulationMax": iceAccumulationMax,
        "iceAccumulationMin": iceAccumulationMin,
        "iceAccumulationSum": iceAccumulationSum,
        "moonriseTime": moonriseTime,
        "moonsetTime": moonsetTime,
        "precipitationProbabilityAvg": precipitationProbabilityAvg,
        "precipitationProbabilityMax": precipitationProbabilityMax,
        "precipitationProbabilityMin": precipitationProbabilityMin,
        "pressureSurfaceLevelAvg": pressureSurfaceLevelAvg,
        "pressureSurfaceLevelMax": pressureSurfaceLevelMax,
        "pressureSurfaceLevelMin": pressureSurfaceLevelMin,
        "rainAccumulationAvg": rainAccumulationAvg,
        "rainAccumulationLweAvg": rainAccumulationLweAvg,
        "rainAccumulationLweMax": rainAccumulationLweMax,
        "rainAccumulationLweMin": rainAccumulationLweMin,
        "rainAccumulationMax": rainAccumulationMax,
        "rainAccumulationMin": rainAccumulationMin,
        "rainAccumulationSum": rainAccumulationSum,
        "rainIntensityAvg": rainIntensityAvg,
        "rainIntensityMax": rainIntensityMax,
        "rainIntensityMin": rainIntensityMin,
        "sleetAccumulationAvg": sleetAccumulationAvg,
        "sleetAccumulationLweAvg": sleetAccumulationLweAvg,
        "sleetAccumulationLweMax": sleetAccumulationLweMax,
        "sleetAccumulationLweMin": sleetAccumulationLweMin,
        "sleetAccumulationLweSum": sleetAccumulationLweSum,
        "sleetAccumulationMax": sleetAccumulationMax,
        "sleetAccumulationMin": sleetAccumulationMin,
        "sleetIntensityAvg": sleetIntensityAvg,
        "sleetIntensityMax": sleetIntensityMax,
        "sleetIntensityMin": sleetIntensityMin,
        "snowAccumulationAvg": snowAccumulationAvg,
        "snowAccumulationLweAvg": snowAccumulationLweAvg,
        "snowAccumulationLweMax": snowAccumulationLweMax,
        "snowAccumulationLweMin": snowAccumulationLweMin,
        "snowAccumulationLweSum": snowAccumulationLweSum,
        "snowAccumulationMax": snowAccumulationMax,
        "snowAccumulationMin": snowAccumulationMin,
        "snowAccumulationSum": snowAccumulationSum,
        "snowDepthAvg": snowDepthAvg,
        "snowDepthMax": snowDepthMax,
        "snowDepthMin": snowDepthMin,
        "snowDepthSum": snowDepthSum,
        "snowIntensityAvg": snowIntensityAvg,
        "snowIntensityMax": snowIntensityMax,
        "snowIntensityMin": snowIntensityMin,
        "sunriseTime": sunriseTime,
        "sunsetTime": sunsetTime,
        "temperatureApparentAvg": temperatureApparentAvg,
        "temperatureApparentMax": temperatureApparentMax,
        "temperatureApparentMin": temperatureApparentMin,
        "temperatureAvg": temperatureAvg,
        "temperatureMax": temperatureMax,
        "temperatureMin": temperatureMin,
        "uvHealthConcernAvg": uvHealthConcernAvg,
        "uvHealthConcernMax": uvHealthConcernMax,
        "uvHealthConcernMin": uvHealthConcernMin,
        "uvIndexAvg": uvIndexAvg,
        "uvIndexMax": uvIndexMax,
        "uvIndexMin": uvIndexMin,
        "visibilityAvg": visibilityAvg,
        "visibilityMax": visibilityMax,
        "visibilityMin": visibilityMin,
        "weatherCodeMax": weatherCodeMax,
        "weatherCodeMin": weatherCodeMin,
        "windDirectionAvg": windDirectionAvg,
        "windGustAvg": windGustAvg,
        "windGustMax": windGustMax,
        "windGustMin": windGustMin,
        "windSpeedAvg": windSpeedAvg,
        "windSpeedMax": windSpeedMax,
        "windSpeedMin": windSpeedMin,
    };

 */