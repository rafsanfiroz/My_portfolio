import 'package:flutter/material.dart';
import 'package:portfolio/constants/color.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: double.maxFinite,
      child: const Text(
        "Made by Rafsan Bin Firoz with flutter 3.10",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: CustomColor.whiteSecondary,
        ),
      ),
    );
  }
}
