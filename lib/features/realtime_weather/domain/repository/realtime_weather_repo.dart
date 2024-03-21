import '../entity/realtime_weather_entity.dart';

abstract class RealtimeWeatherRepo {
  Future<RealtimeWeatherEntity> fetchRealtimeWeatherInfo(
      {required String param, String? endpoint});
}
