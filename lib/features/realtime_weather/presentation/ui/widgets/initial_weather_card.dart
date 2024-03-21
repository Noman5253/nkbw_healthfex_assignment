import 'package:flutter/material.dart';

import '../../../../../core/loader/loader_view.dart';
import '../../../../../resources/string.dart';

Widget initialWeatherDataCard({
    required BuildContext context,
    required String temprature,
    required String address,
    required bool isLoading,
    required String date,
    required VoidCallback onRefresh,    
  }) {
    return Center(
        child: Card.filled(
      color: Theme.of(context).colorScheme.primaryContainer,
      margin: const EdgeInsets.symmetric(
        horizontal: 45,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      temprature,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Icon(Icons.info_outline_rounded,
                          size: 60,
                          color: Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(0.25)),
                    ),
                    LoaderView(
                        isLoading: isLoading,
                        loaderWidget: const SizedBox(
                            height: 15,
                            width: 15,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                            )),
                        child: InkWell(
                            onTap: 
                              onRefresh,
                            child: const Icon(Icons.refresh))),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Text(
                  address,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w400),
                )),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              date,
              style: const TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    ));
  }
