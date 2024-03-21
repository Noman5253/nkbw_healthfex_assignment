import 'package:flutter/material.dart';

import '../../../../../resources/padding.dart';
import '../../../../../resources/string.dart';
import 'more_info_row.dart';

Widget moreWeatherDataCard(
      {required BuildContext context,
      required String precipitation,
      required String windDirection,
      required String humidity,
      required String windSpeed}) {
    return Center(
        child: Card.filled(
      color: Theme.of(context).colorScheme.primaryContainer,
      margin: padding45H(),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.moreInfo,
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  MoreInfoRow(
                    title: AppStrings.precipiationPer,
                    value: precipitation,
                  ),
                  MoreInfoRow(
                    title: AppStrings.windDirection,
                    value: windDirection,
                  ),
                  MoreInfoRow(
                    title: AppStrings.humidity,
                    value: humidity,
                  ),
                  MoreInfoRow(
                    title: AppStrings.windSpeed,
                    value: windSpeed,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
  
