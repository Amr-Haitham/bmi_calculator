import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hediety/models/weight_class.dart';
import 'widgets/bmi_data_metric.dart';
import 'widgets/weight_class_card.dart';

class ResultsScreen extends StatefulWidget {
  const ResultsScreen(
      {super.key,
      required this.age,
      required this.height,
      required this.weight});
  final double height;
  final int age;
  final double weight;

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  bool? isMale;

  late List<WeightClass> weightClasses;

  WeightClass? getWeightClass() {
    double bmi = widget.weight / (pow(widget.height / 100, 2));
    print(bmi);
    WeightClass? weightClass = weightClasses.firstWhere((weightClass) {
      if (weightClass.minValue <= bmi && weightClass.maxValue >= bmi) {
        return true;
      } else {
        return false;
      }
    });

    return weightClass;
  }

  @override
  void initState() {
    weightClasses = WeightClass.getListOfRealLifeWeightClasses();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff1FE394),
              Color(0xffCCF4F8),
              Color(0xffCCF4F8)
            ], // Define the gradient colors
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            const Expanded(
                child: Padding(
              padding: EdgeInsets.all(32.0),
              child: SizedBox(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Your BMI result",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Roboto",
                        color: Colors.black),
                  ),
                ),
              ),
            )),
            Container(
              height: 600,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(45))),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: Text(
                          "your have a ${getWeightClass()!.text} body weight",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 14,
                              fontFamily: "Roboto",
                              color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 90,
                        decoration: const BoxDecoration(
                            color: Color(0xffCCF4F8),
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            BmiDataMetric(
                              title: "Age",
                              value: widget.age.toString(),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 16.0),
                              child: VerticalDivider(),
                            ),
                            BmiDataMetric(
                              title: "Weight",
                              value: widget.weight.toString(),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 16.0),
                              child: VerticalDivider(),
                            ),
                            BmiDataMetric(
                              title: "Height",
                              value: widget.height.toString(),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 400,
                        child: ListView.separated(
                            separatorBuilder: (context, index) {
                              return const SizedBox(
                                height: 10,
                              );
                            },
                            itemCount: weightClasses.length,
                            // physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return WeightClassCard(
                                weightClass: weightClasses[index],
                                isSelected: getWeightClass() != null
                                    ? getWeightClass()!.id ==
                                        weightClasses[index].id
                                    : false,
                              );
                            }),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
