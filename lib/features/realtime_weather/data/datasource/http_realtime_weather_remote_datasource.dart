import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:weather_app/core/env/base_url.dart';
import 'package:weather_app/core/env/weather_api_key.dart';
import 'package:weather_app/features/realtime_weather/data/datasource/realtime_weather_remote_datasource.dart';
import 'package:http/http.dart' as http;

class HttpRealtimeWeatherRemoteDatasource
    extends RealtimeWeatherRemoteDataSource {
  final BaseUrl url;
  const HttpRealtimeWeatherRemoteDatasource(
      {this.url = const WeatherApiBaseUrl()});

  @override
  Future get({required String param, String? endpoint}) async {
    http.Client client = http.Client();
    Uri uri = Uri.parse(
        "${url.getBaseUrl()}${endpoint!}?location=$param&apikey=${WeatherApiKey.apiKey}");
    http.Response response = await client.get(uri, headers: <String, String>{
      'Content-Type': 'application/json',
    });

    int statusCode = response.statusCode;

    var jsonResponse = {};
    try {
      jsonResponse = jsonDecode(response.body);
    } catch (e) {
      debugPrint("/GET error ${e.toString()}");
    }

    jsonResponse["statusCode"] = statusCode;

    debugPrint("API ${uri.toString()}, Request $param, response $jsonResponse");
    return jsonResponse;
  }
}
