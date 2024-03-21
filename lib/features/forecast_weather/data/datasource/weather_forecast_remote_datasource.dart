abstract class WeatherForecastRemoteDataSource {
  const WeatherForecastRemoteDataSource();
  Future get({required String param, String? endpoint});
}
