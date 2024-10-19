import 'package:flutter/material.dart';

class BmiDataMetric extends StatelessWidget {
  final String title;
  final String value;
  const BmiDataMetric({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "Roboto",
              color: Colors.black),
        ),
        const SizedBox(height: 5),
        Text(value),
      ],
    );
  }
}
