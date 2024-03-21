import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:weather_app/core/date_formatter/date_formatter.dart';
import 'package:weather_app/core/date_formatter/day_time_date_formatter.dart';
import 'package:weather_app/core/dialog/app_dialog.dart';
import 'package:weather_app/core/gps/geolocator_gps_service.dart';
import 'package:weather_app/core/gps/gps_service.dart';
import 'package:weather_app/core/location/geocoding_service.dart';
import 'package:weather_app/core/location/geocoding_service_impl.dart';
import 'package:weather_app/core/location/geolocator_location_service.dart';
import 'package:weather_app/core/location/location_entity.dart';
import 'package:weather_app/core/location/location_service.dart';
import 'package:weather_app/core/permission/geolocator_location_permission_helper.dart';
import 'package:weather_app/core/permission/permission_helper.dart';
import 'package:weather_app/features/realtime_weather/data/repository/realtime_weather_repo_impl.dart';
import 'package:weather_app/features/realtime_weather/domain/usecase/fetch_realtime_weather_usecase.dart';

import '../../../../core/loader/loader.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../../resources/routes.dart';
import '../../../../resources/string.dart';
import '../../domain/entity/realtime_weather_entity.dart';

class RealtimeWeatherViewModel extends GetxController {
  late Usecase<RealtimeWeatherEntity> fetchRealtimeWeatherUsecase;
  late Loader loader;
  late LocationService locationService;
  late GpsService gpsService;
  late PermissionHelper permissionHelper;
  late AppDialog dialog;
  late DateFormatter dayTimeFormater;
  late GeocodingService geocodingService;

  TextEditingController cityController = TextEditingController();
  LocationEntity? myLocation;

  String temprature = AppStrings.notAvailable;
  String address = AppStrings.notAvailable;
  String date = AppStrings.notAvailable;

  String precipitation = AppStrings.notAvailable;
  String windDirection = AppStrings.notAvailable;
  String humidity = AppStrings.notAvailable;
  String windSpeed = AppStrings.notAvailable;

  @override
  void onInit() {
    super.onInit();
    fetchRealtimeWeatherUsecase =
        FetchRealtimeWeatherUsecase(repositoryUsed: RealtimeWeatherRepoImpl());
    loader = ComponentLoader(view: this, isLoading: false);
    gpsService = GeolocatorGpsService();
    permissionHelper = GeolocatorLocationPermissionHelper();
    locationService = GeolocatorLocationService(
        gpsService: gpsService, permissionHelper: permissionHelper);
    dialog = SnackBarDialog();
    dayTimeFormater = DayTimeDateFormater();
    geocodingService = GeocodingServiceImpl();
  }

  Future<void> fetchRealtimeWeatherData({required Map request}) async {
    loader.startLoading();
    await fetchRealtimeWeatherUsecase(
        request: request,
        onSuccess: (response) async {
          if (response?.data != null) {
            if (response?.data?.values != null) {
              temprature = (response!.data!.values!.temperature ?? 0.0)
                  .toStringAsFixed(1);
              date = response.data!.time.toString();
              precipitation =
                  (response.data!.values!.precipitationProbability ?? 0.0)
                      .toString();
              humidity = (response.data!.values!.humidity ?? 0.0).toString();
              windSpeed = (response.data!.values!.windSpeed ?? 0.0).toString();
              windDirection =
                  (response.data!.values!.windDirection ?? 0.0).toString();
            }

            if (response?.location != null) {
              debugPrint("here in locations");
              address = response?.location?.address ?? "N/A";

              if (address == "N/A") {
                response?.location?.address =
                    await geocodingService.decodeLatLng(response.location);
                address = response?.location?.address ?? "N/A";
              }

              myLocation = response?.location;
            }
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
    cityController.clear();
    loader.stopLoading();
  }

  void onRefresh() {
    if (myLocation != null) {
      fetchRealtimeWeatherData(request: {
        "queryParam": "${myLocation!.latitude},${myLocation!.longitude}"
      });
    }
  }

  void onSubmit(value) {
    fetchRealtimeWeatherData(request: {"queryParam": value});
  }

  Future<void> getWeatherDataForMyCurrentLocation() async {
    loader.startLoading();
    myLocation = await locationService.getCurrentLocation();
    if (myLocation != null) {
      fetchRealtimeWeatherData(request: {
        "queryParam": "${myLocation!.latitude},${myLocation!.longitude}"
      });
    }
  }

  void onPressed() {
    Get.toNamed(AppRoutes.forecastWeather, arguments: myLocation);
  }
}
