import 'package:flutter/material.dart';

Widget searchbar(
    {required TextEditingController controller,
    required Function(String) onSubmit}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25),
    child: Row(
      children: [
        Expanded(
          child: TextField(
            controller: controller,
            onSubmitted: onSubmit,
            decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 0),
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
                isDense: true,
                hintText: "Enter city here"),
          ),
        ),
      ],
    ),
  );
}
