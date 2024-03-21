import 'package:weather_app/core/usecase/usecase.dart';
import 'package:weather_app/features/realtime_weather/domain/entity/realtime_weather_entity.dart';
import 'package:weather_app/features/realtime_weather/domain/repository/realtime_weather_repo.dart';

class FetchRealtimeWeatherUsecase extends Usecase<RealtimeWeatherEntity> {
  RealtimeWeatherRepo repositoryUsed;
  FetchRealtimeWeatherUsecase({required this.repositoryUsed});

  @override
  Future<void> call(
      {required Map request,
      String? endpoint,
      Function(RealtimeWeatherEntity?)? onSuccess,
      Function(int statusCode, String message)? onFaliure,
      Function()? onAuthFailure,
      Function(Object)? onError}) async {
    await repositoryUsed
        .fetchRealtimeWeatherInfo(param: request["queryParam"].toString())
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
