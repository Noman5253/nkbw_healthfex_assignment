import 'package:flutter/material.dart';

import '../../../../../core/date_formatter/date_formatter.dart';
import '../../../../../core/date_parser/date_parser.dart';
import '../../../../../resources/string.dart';
import '../../../../realtime_weather/domain/entity/weather_data_entity.dart';
import '../../../../realtime_weather/presentation/ui/widgets/more_info_row.dart';

Widget dailyForecastCard(
      {required BuildContext context,
      required WeatherDataEntity weatherData,
      DateFormatter? dayFomatter,
      ddFormatter,
      monthYearFormatter,
      dayTimeFormatter,
      DateParser? dateParser}) {
    return Card.filled(
      margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 15),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(dayFomatter!.formateDate(
                        dateParser!.parseDate(weatherData.time.toString()))),
                    Text(
                      ddFormatter.formateDate(
                          dateParser.parseDate(weatherData.time.toString())),
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    Text(monthYearFormatter.formateDate(
                        dateParser.parseDate(weatherData.time.toString())))
                  ],
                ),
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          weatherData.values!.temperatureAvg!
                              .toStringAsFixed(1),
                          style: TextStyle(
                              fontSize: 80,
                              color: Theme.of(context).colorScheme.primary),
                        ),
                        Text(
                          AppStrings.degCelc,
                          style: TextStyle(
                              fontSize: 30,
                              color: Theme.of(context)
                                  .colorScheme
                                  .primary
                                  .withOpacity(0.5)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                            "Min: ${weatherData.values!.temperatureMin!.toStringAsFixed(1)} ${AppStrings.degCelc} / "),
                        Text(
                            "Max: ${weatherData.values!.temperatureMax!.toStringAsFixed(1)} ${AppStrings.degCelc}"),
                      ],
                    )
                  ],
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(),
            ),
            MoreInfoRow(
                title: AppStrings.cloudbase + AppStrings.avg,
                value: weatherData.values!.cloudBaseAvg!.toStringAsFixed(2)),
            MoreInfoRow(
                title: AppStrings.humidity + AppStrings.avg,
                value: weatherData.values!.humidityAvg!.toStringAsFixed(2)),
            MoreInfoRow(
                title: AppStrings.precipiationPer + AppStrings.avg,
                value: weatherData.values!.precipitationProbabilityAvg!
                    .toStringAsFixed(2)),
            MoreInfoRow(
                title: AppStrings.windDirection + AppStrings.avg,
                value:
                    weatherData.values!.windDirectionAvg!.toStringAsFixed(2)),
            MoreInfoRow(
                title: AppStrings.windSpeed + AppStrings.avg,
                value: weatherData.values!.windSpeedAvg!.toStringAsFixed(2)),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(),
            ),
            MoreInfoRow(
                title: AppStrings.sunriseTime, value: AppStrings.sunsetTime),
            MoreInfoRow(
                title: dayTimeFormatter.formateDate(
                    dateParser.parseDate(weatherData.values!.sunriseTime!)),
                value: dayTimeFormatter.formateDate(
                    dateParser.parseDate(weatherData.values!.sunsetTime!))),
          ],
        ),
      ),
    );
  }
