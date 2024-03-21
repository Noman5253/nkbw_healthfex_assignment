import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/features/forecast_weather/presentation/state_mgmt/weather_forecast_viewmodel.dart';

import '../../../../resources/string.dart';
import '../ui/widgets/daily_forecast_card.dart';

class WeatherForecastPage extends StatelessWidget {
  const WeatherForecastPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context)
        .textTheme
        .apply(displayColor: Theme.of(context).colorScheme.onPrimaryContainer);

    return GetBuilder<WeatherForecasetViewModel>(builder: (vm) {
      return Scaffold(
          appBar: _buildAppBar(textTheme), body: _buildBody(vm, context));
    });
  }

  Column _buildBody(WeatherForecasetViewModel vm, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [addressText(vm, context), forecasts(vm)],
    );
  }

  Expanded forecasts(WeatherForecasetViewModel vm) {
    return Expanded(
        child: ListView.builder(
      itemCount: vm.dailyForecasts.length,
      itemBuilder: (context, index) {
        return dailyForecastCard(
            context: context,
            weatherData: vm.dailyForecasts[index],
            dateParser: vm.dateParser,
            dayFomatter: vm.dayFomatter,
            dayTimeFormatter: vm.dayTimeFormatter,
            ddFormatter: vm.ddFormatter,
            monthYearFormatter: vm.monthYearFormatter);
      },
    ));
  }

  Padding addressText(WeatherForecasetViewModel vm, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
      child: Text(
        vm.address,
        style: TextStyle(
            color: Theme.of(context).colorScheme.primary, fontSize: 28),
      ),
    );
  }

  AppBar _buildAppBar(TextTheme textTheme) {
    return AppBar(
      automaticallyImplyLeading: true,
      title: Padding(
        padding: const EdgeInsets.only(bottom: 16.0, top: 16.0),
        child: Text(
          AppStrings.weatherForecast,
          style: textTheme.headlineMedium,
        ),
      ),
    );
  }
}
