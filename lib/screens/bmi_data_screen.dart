import 'package:flutter/material.dart';

import 'widgets/bmi_data_textfield.dart';

class BmiDataScreen extends StatefulWidget {
  const BmiDataScreen({super.key, required this.name});
  final String name;
  @override
  State<BmiDataScreen> createState() => _BmiDataScreenState();
}

class _BmiDataScreenState extends State<BmiDataScreen> {
  bool? isMale;
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
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: SizedBox(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Hi! ${widget.name}",
                    style: const TextStyle(
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                              radius: 60,
                              backgroundColor: const Color(0xffCCF4F8),
                              child: isMale != null
                                  ? (isMale!
                                      ? Image.asset(
                                          "assets/male.png",
                                          scale: 1,
                                        )
                                      : Image.asset(
                                          "assets/female.png",
                                          scale: 1,
                                        ))
                                  : const Center(
                                      child: Text(
                                      "Choose a gender",
                                      textAlign: TextAlign.center,
                                    ))),
                          DropdownButton<bool>(
                              value: isMale,
                              hint: const Text("Choose Gender"),
                              items: const [
                                DropdownMenuItem(
                                    value: true, child: Text("Male")),
                                DropdownMenuItem(
                                    value: false, child: Text("Female"))
                              ],
                              onChanged: (newGender) {
                                print("new gener : $newGender");
                                setState(() {
                                  isMale = newGender;
                                });
                              })
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      BmiDataTextField(
                        labelText: 'Age',
                        onChanged: (ageText) {},
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      BmiDataTextField(
                        labelText: 'Weight',
                        onChanged: (ageText) {},
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      BmiDataTextField(
                        labelText: 'Height',
                        onChanged: (ageText) {},
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff35D2E9)),
                            onPressed: () {},
                            iconAlignment: IconAlignment.end,
                            child: const Text(
                              "Calculate your BMI",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Roboto",
                                  color: Colors.black),
                            ),
                          )
                        ],
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
