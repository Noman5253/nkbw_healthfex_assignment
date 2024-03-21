import 'package:weather_app/core/usecase/usecase.dart';
import 'package:weather_app/features/forecast_weather/domain/entity/weather_forecast_entity.dart';
import 'package:weather_app/features/forecast_weather/domain/repository/weather_forecast_repo.dart';

class FetchWeatherForecastUsecase extends Usecase<WeatherForecastEntity> {
  WeatherForecastRepo repositoryUsed;
  String? queryParam;
  FetchWeatherForecastUsecase({required this.repositoryUsed, this.queryParam});

  @override
  Future<void> call(
      {required Map request,
      String? endpoint,
      Function(WeatherForecastEntity?)? onSuccess,
      Function(int, String)? onFaliure,
      Function()? onAuthFailure,
      Function(Object)? onError}) async {
    await repositoryUsed
        .fetchWeatherForecast(param: request["queryParam"].toString())
        .then((response) {
      if (response.statusCode == 200) {
        if (onSuccess != null) {
          onSuccess(response);
        }
      } else if (response.statusCode == 400) {
        if (onFaliure != null) {
          onFaliure(response.statusCode!, "Unable to fetch realtime location");
        }
      } else if (response.statusCode == 401) {
        if (onAuthFailure != null) {
          onAuthFailure();
        }
      }
    }).onError((error, stackTrace) {
      if (onError != null) {
        onError(error!);
      }
    });
  }
}
