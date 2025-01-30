import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RoundSection extends StatelessWidget {
  String iconPath;
  String foodType;
  RoundSection({super.key, required this.foodType, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          iconPath,
          fit: BoxFit.contain,
          height: 64,
          width: 64,
        ),
        SizedBox(
          height: 10,
        ),
        Text(foodType, style: TextStyle(fontSize: 13)),
      ],
    );
  }
}
