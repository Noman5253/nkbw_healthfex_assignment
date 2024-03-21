import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:weather_app/core/env/base_url.dart';
import 'package:weather_app/core/env/weather_api_key.dart';
import 'package:http/http.dart' as http;

import 'weather_forecast_remote_datasource.dart';

class HttpWeatherForecastRemoteDatasource
    extends WeatherForecastRemoteDataSource {
  final BaseUrl url;
  const HttpWeatherForecastRemoteDatasource(
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

    debugPrint("API ${uri.toString()}, queryParam $param, response $jsonResponse");
    return jsonResponse;
  }
}
