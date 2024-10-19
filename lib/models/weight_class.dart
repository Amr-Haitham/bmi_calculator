import 'package:flutter/material.dart';

class WeightClass {
  final String id;
  final Color color;
  final String text;
  final double minValue;
  final double maxValue;

  WeightClass(
      {required this.id,
      required this.color,
      required this.text,
      required this.minValue,
      required this.maxValue});

  static List<WeightClass> getListOfRealLifeWeightClasses() {
    return [
      WeightClass(
        id: "1",
        color: Colors.blue,
        text: 'Very severely underweight',
        minValue: 0, // No minimum value, assume 0
        maxValue: 15.9,
      ),
      WeightClass(
        id: "2",
        color: Colors.lightBlueAccent,
        text: 'Severely underweight',
        minValue: 16.0,
        maxValue: 16.9,
      ),
      WeightClass(
        id: "3",
        color: Colors.lightBlue,
        text: 'Underweight',
        minValue: 17.0,
        maxValue: 18.4,
      ),
      WeightClass(
        id: "4",
        color: Colors.green,
        text: 'Normal',
        minValue: 18.5,
        maxValue: 24.9,
      ),
      WeightClass(
        id: "5",
        color: Colors.yellow,
        text: 'Overweight',
        minValue: 25.0,
        maxValue: 29.9,
      ),
      WeightClass(
        id: "6",
        color: Colors.orange,
        text: 'Obese class I',
        minValue: 30.0,
        maxValue: 34.9,
      ),
      WeightClass(
        id: "7",
        color: Colors.deepOrangeAccent,
        text: 'Obese class II',
        minValue: 35.0,
        maxValue: 39.9,
      ),
      WeightClass(
        id: "8",
        color: Colors.red,
        text: 'Obese class III',
        minValue: 40.0,
        maxValue: double.infinity, // No upper limit
      ),
    ];
  }
}
