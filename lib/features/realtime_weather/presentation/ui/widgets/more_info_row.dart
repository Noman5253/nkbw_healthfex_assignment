import 'package:flutter/material.dart';

class MoreInfoRow extends StatelessWidget {
  const MoreInfoRow({
    required this.title,
    required this.value,
    super.key,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text(title)),
        Text(
          value,
          textAlign: TextAlign.end,
        ),
      ],
    );
  }
}
