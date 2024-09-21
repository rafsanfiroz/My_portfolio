import 'package:flutter/material.dart';
import 'package:portfolio/constants/color.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: const Text(
          'Rafsan Bin Firoz',
          style: kHeaderTestStyle,
        ));
  }
}
