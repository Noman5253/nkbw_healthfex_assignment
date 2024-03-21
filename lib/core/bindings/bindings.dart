import 'package:get/get.dart';
import 'package:weather_app/features/realtime_weather/presentation/state_mgmt/realtime_weather_viewmodel.dart';

import '../../features/forecast_weather/presentation/state_mgmt/weather_forecast_viewmodel.dart';

class RealtimeWeatherBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RealtimeWeatherViewModel());
  }
}

class WeatherForecastBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(WeatherForecasetViewModel());
  }
}
