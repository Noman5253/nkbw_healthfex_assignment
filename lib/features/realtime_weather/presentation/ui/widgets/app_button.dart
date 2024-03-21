import 'package:flutter/material.dart';

import '../../../../../resources/string.dart';

Widget viewForecastButton({required VoidCallback onPressed}) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 45),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: ElevatedButton(
              onPressed: onPressed, child: Text(AppStrings.viewForecast)),
        ),
      ],
    ),
  );
}
