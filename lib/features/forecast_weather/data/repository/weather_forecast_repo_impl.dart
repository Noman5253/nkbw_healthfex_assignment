import '../../../../core/env/endpoints.dart';
import '../../domain/entity/weather_forecast_entity.dart';
import '../../domain/repository/weather_forecast_repo.dart';
import '../datasource/http_weather_forecast_remote_datasource.dart';
import '../datasource/weather_forecast_remote_datasource.dart';
import '../models/forcast_weather_model.dart';

class WeatherForecastRepoImpl extends WeatherForecastRepo {
  WeatherForecastRemoteDataSource remoteDataSource;
  WeatherForecastRepoImpl(
      {this.remoteDataSource = const HttpWeatherForecastRemoteDatasource()});

  @override
  Future<WeatherForecastEntity> fetchWeatherForecast(
      {required String param, String? endpoint}) async {
    return WeatherForecastInfo().fromJson(
        await remoteDataSource.get(param: param, endpoint: Endpoints.forecast));
  }
}
