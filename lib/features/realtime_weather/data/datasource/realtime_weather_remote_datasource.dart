abstract class RealtimeWeatherRemoteDataSource {
  const RealtimeWeatherRemoteDataSource();
  Future get({required String param, String? endpoint});
}
