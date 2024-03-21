import '../entity/weather_forecast_entity.dart';

abstract class WeatherForecastRepo {
  Future<WeatherForecastEntity> fetchWeatherForecast({required String param, String? endpoint});
}
