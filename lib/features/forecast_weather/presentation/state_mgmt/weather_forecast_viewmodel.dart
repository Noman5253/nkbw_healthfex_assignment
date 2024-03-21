import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/core/date_formatter/date_dd_formatter.dart';
import 'package:weather_app/core/date_formatter/date_formatter.dart';
import 'package:weather_app/core/date_formatter/date_month_year_formatter.dart';
import 'package:weather_app/core/date_formatter/day_date_formatter.dart';
import 'package:weather_app/core/date_formatter/day_time_date_formatter.dart';
import 'package:weather_app/core/date_parser/date_parser.dart';
import 'package:weather_app/core/date_parser/iso_string_date_parser.dart';
import 'package:weather_app/core/location/geocoding_service_impl.dart';
import 'package:weather_app/core/location/location_entity.dart';
import 'package:weather_app/core/usecase/usecase.dart';
import 'package:weather_app/features/forecast_weather/data/repository/weather_forecast_repo_impl.dart';
import 'package:weather_app/features/forecast_weather/domain/entity/weather_forecast_entity.dart';
import 'package:weather_app/features/forecast_weather/domain/usecase/fetch_realtime_weather_usecase.dart';

import '../../../../core/dialog/app_dialog.dart';
import '../../../../core/loader/loader.dart';
import '../../../../core/location/geocoding_service.dart';
import '../../../../resources/string.dart';
import '../../../realtime_weather/domain/entity/weather_data_entity.dart';

class WeatherForecasetViewModel extends GetxController {
  late Usecase<WeatherForecastEntity> fetchWeatherForecastUsecase;
  late Loader loader;
  late AppDialog dialog;
  late GeocodingService geocodingService;
  late DateParser dateParser;
  late DateFormatter dayFomatter,
      ddFormatter,
      monthYearFormatter,
      dayTimeFormatter;
  LocationEntity? myLocation;
  String address = AppStrings.notAvailable;

  List<WeatherDataEntity> dailyForecasts = List.empty(growable: true);

  @override
  void onInit() {
    super.onInit();
    dateParser = IsoStringDateParser();
    dayFomatter = DayDateFormatter();
    ddFormatter = DateDDFormatter();
    monthYearFormatter = DateMonthYearFormatter();
    dayTimeFormatter = DayTimeDateFormater();
    loader = ComponentLoader(view: this, isLoading: false);
    dialog = SnackBarDialog();
    geocodingService = GeocodingServiceImpl();

    fetchWeatherForecastUsecase =
        FetchWeatherForecastUsecase(repositoryUsed: WeatherForecastRepoImpl());

    myLocation = Get.arguments;
    fetchWeatherForecastData(request: {
      "queryParam": "${myLocation!.latitude},${myLocation!.longitude}"
    });
  }

  Future<void> fetchWeatherForecastData({required Map request}) async {
    loader.startLoading();
    await fetchWeatherForecastUsecase(
        request: request,
        onSuccess: (response) async {
          if (response != null) {
            if (response.timelines != null) {
              //Daily Forecasts
              dailyForecasts.clear();
              dailyForecasts.addAll(response.timelines!.daily!);

              //Minutely

              //Hourly
            }

            if (response.location != null) {
              debugPrint("here in locations");
              address = response.location?.address ?? "N/A";

              if (address == "N/A") {
                response.location?.address =
                    await geocodingService.decodeLatLng(response.location);
                address = response.location?.address ?? "N/A";
              }
            }

            myLocation = response.location;
          }
          update();
        },
        onAuthFailure: () {
          dialog.showAppDialog(
              title: "Server message",
              body: "Unauthorized Request. Try again later");
        },
        onFaliure: (statusCode, message) {
          dialog.showAppDialog(title: "Server message", body: message);
        },
        onError: (error) {
          dialog.showAppDialog(title: "Server message", body: error.toString());
        });
    loader.stopLoading();
  }
}
