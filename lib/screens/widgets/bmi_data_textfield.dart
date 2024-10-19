import 'package:flutter/material.dart';

class BmiDataTextField extends StatelessWidget {
  final String labelText;
  final Function(String) onChanged;
  const BmiDataTextField(
      {super.key, required this.labelText, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          labelText,
          style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: "Roboto",
              color: Colors.black),
        ),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: TextField(
            onChanged: onChanged,
            decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xffCCF4F8),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                    borderSide:
                        const BorderSide(style: BorderStyle.none, width: 0))),
          ),
        ),
      ],
    );
  }
}
