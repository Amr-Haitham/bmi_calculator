import 'package:flutter/material.dart';
import 'package:hediety/models/weight_class.dart';

class WeightClassCard extends StatelessWidget {
  final WeightClass weightClass;
  final bool isSelected;
  const WeightClassCard({
    super.key,
    required this.isSelected,
    required this.weightClass,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 10,
          backgroundColor: weightClass.color,
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(8),

            
            decoration: BoxDecoration(
              color: isSelected ? const Color(0xffCCF4F8) : null,
              borderRadius: BorderRadius.all(Radius.circular(16 ))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  weightClass.text,
                  style: const TextStyle(
                      fontSize: 14, fontFamily: "Roboto", color: Colors.black),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "${weightClass.minValue} - ${weightClass.maxValue}",
                  style: const TextStyle(
                      fontSize: 14, fontFamily: "Roboto", color: Colors.black),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
