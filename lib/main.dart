import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/core/bindings/bindings.dart';
import 'package:weather_app/features/forecast_weather/presentation/page/weather_forecast_page.dart';
import 'package:weather_app/features/realtime_weather/presentation/page/realtime_weather_page.dart';

import 'resources/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
            name: AppRoutes.realtimeWeather,
            page: () => const RealtimeWeatherPage(), binding: RealtimeWeatherBinding()),
        GetPage(
            name: AppRoutes.forecastWeather,
            page: () => const WeatherForecastPage(), binding: WeatherForecastBinding()),    
      ],
      initialRoute: AppRoutes.realtimeWeather,
    );
  }
}
