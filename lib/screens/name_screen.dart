import 'package:flutter/material.dart';

class NameScreen extends StatefulWidget {
  const NameScreen({super.key});

  @override
  State<NameScreen> createState() => _NameScreenState();
}

class _NameScreenState extends State<NameScreen> {
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
                child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/smily_robot.png',
                    scale: 2,
                  ),
                  const Text(
                    "Welcome!",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Roboto",
                        color: Colors.black),
                  )
                ],
              ),
            )),
            Container(
              height: 350,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(45))),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Enter your name",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Roboto",
                              color: Colors.black),
                        ),
                        TextField(
                          onChanged: (text) {},
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xffCCF4F8),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(32),
                                  borderSide: const BorderSide(
                                      style: BorderStyle.none, width: 0))),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff35D2E9)),
                          onPressed: () {},
                          iconAlignment: IconAlignment.end,
                          icon: const Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                          label: const Text(
                            "Next",
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
            )
          ],
        ),
      ),
    );
  }
}
