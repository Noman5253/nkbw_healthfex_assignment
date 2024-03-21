import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/features/realtime_weather/presentation/state_mgmt/realtime_weather_viewmodel.dart';

import '../../../../resources/string.dart';
import '../ui/widgets/app_button.dart';
import '../ui/widgets/initial_weather_card.dart';
import '../ui/widgets/more_info_weather_card.dart';
import '../ui/widgets/search_bar.dart';
import '../ui/widgets/weather_info_card.dart';

class RealtimeWeatherPage extends StatelessWidget {
  const RealtimeWeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context)
        .textTheme
        .apply(displayColor: Theme.of(context).colorScheme.onPrimaryContainer);

    return GetBuilder<RealtimeWeatherViewModel>(builder: (vm) {
      return Scaffold(
          appBar: _buildAppBar(textTheme),
          floatingActionButton: _buildFloatingActionButton(vm),
          body: _buildBody(vm, context, textTheme));
    });
  }

  Widget _buildBody(
      RealtimeWeatherViewModel vm, BuildContext context, TextTheme textTheme) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          searchbar(
            controller: vm.cityController,
            onSubmit: vm.onSubmit,
          ),
          const SizedBox(
            height: 20,
          ),
          vm.myLocation == null
              ? weatherInfoCard(
                  context: context,
                  textTheme: textTheme,
                  isLoading: vm.loader.isLoading)
              : _buildWeatherLayout(context, vm)
        ],
      ),
    );
  }

  Widget _buildWeatherLayout(
      BuildContext context, RealtimeWeatherViewModel vm) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        initialWeatherDataCard(
            context: context,
            address: vm.address,
            date: vm.dayTimeFormater.formateDate(DateTime.now()),
            isLoading: vm.loader.isLoading,
            onRefresh: vm.onRefresh,
            temprature: vm.temprature),
        const SizedBox(
          height: 20,
        ),
        moreWeatherDataCard(
            context: context,
            precipitation: vm.precipitation,
            humidity: vm.humidity,
            windDirection: vm.windDirection,
            windSpeed: vm.windSpeed),
        const SizedBox(
          height: 20,
        ),
        viewForecastButton(onPressed: vm.onPressed)
      ],
    );
  }

  Widget _buildFloatingActionButton(RealtimeWeatherViewModel vm) {
    return FloatingActionButton(
      elevation: 1.0,
      onPressed: () async {
        await vm.getWeatherDataForMyCurrentLocation();
      },
      child: const Icon(Icons.my_location_rounded),
    );
  }

  AppBar _buildAppBar(TextTheme textTheme) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          AppStrings.realtimeWeather,
          style: textTheme.headlineMedium,
        ),
      ),
    );
  }
}
