import 'package:weather_app/core/env/endpoints.dart';
import 'package:weather_app/features/realtime_weather/data/datasource/http_realtime_weather_remote_datasource.dart';
import 'package:weather_app/features/realtime_weather/data/datasource/realtime_weather_remote_datasource.dart';
import 'package:weather_app/features/realtime_weather/data/models/realtime_weather_model.dart';
import 'package:weather_app/features/realtime_weather/domain/entity/realtime_weather_entity.dart';
import 'package:weather_app/features/realtime_weather/domain/repository/realtime_weather_repo.dart';

class RealtimeWeatherRepoImpl extends RealtimeWeatherRepo {
  RealtimeWeatherRemoteDataSource remoteDataSource;
  RealtimeWeatherRepoImpl(
      {this.remoteDataSource = const HttpRealtimeWeatherRemoteDatasource()});

  @override
  Future<RealtimeWeatherEntity> fetchRealtimeWeatherInfo(
      {required String param, String? endpoint}) async {
    return RealtimeWeatherInfo().fromJson(
        await remoteDataSource.get(param: param, endpoint: Endpoints.realtime));
  }
}
