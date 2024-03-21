import 'package:flutter/material.dart';

import '../../../../../core/loader/loader_view.dart';
import '../../../../../resources/string.dart';

Widget weatherInfoCard({
    required BuildContext context,
    required textTheme,
    required bool isLoading,
  }) {
    return Card.filled(
        color: Theme.of(context).colorScheme.primaryContainer,
        margin: const EdgeInsets.symmetric(
          horizontal: 45,
        ),
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        AppStrings.weatherTipHeading,
                        style: textTheme.bodyLarge,
                      ),
                    ),
                    LoaderView(
                        isLoading: isLoading,
                        loaderWidget: const SizedBox(
                          height: 15,
                          width: 15,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                          ),
                        ),
                        child: const Icon(
                          Icons.info_outlined,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  AppStrings.tipLine1,
                  style: textTheme.labelLarge,
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(AppStrings.tipLine2,
                    style: textTheme.labelLarge, textAlign: TextAlign.start)
              ],
            )));
  }
