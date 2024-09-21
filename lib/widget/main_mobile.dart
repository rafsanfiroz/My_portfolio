import 'package:flutter/material.dart';
import 'package:portfolio/constants/color.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      height: screenHeight,
      constraints: const BoxConstraints(minHeight: 560),
      margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
              shaderCallback: (bounds) {
                return LinearGradient(colors: [
                  CustomColor.scaffoldBg.withOpacity(0.6),
                  CustomColor.scaffoldBg.withOpacity(0.6),
                ]).createShader(bounds);
              },
              blendMode: BlendMode.srcATop,
              child: Image.asset(
                "assets/images/Picture2.png",
                width: screenWidth / 2,
              )),
          const SizedBox(
            height: 30.0,
          ),
          const Text(
            "HI,\nI am Rafsan Bin Firoz\nA Flutter Developer",
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: CustomColor.whiteSecondary,
              // height: 1.5,
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          SizedBox(
            height: 40,
            width: 190,
            child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Get in Touch",
                  style: TextStyle(
                    color: CustomColor.yellowSecondary,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
