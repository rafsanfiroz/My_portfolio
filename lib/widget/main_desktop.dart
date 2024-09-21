import 'package:flutter/material.dart';
import 'package:portfolio/constants/color.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(
        minHeight: 350.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "HI,\nI am Rafsan Bin Firoz\nA Flutter Developer",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whiteSecondary,
                  // height: 1.5,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              SizedBox(
                height: 40,
                width: 300,
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
          Image.asset(
            "assets/images/Picture2.png",
            width: screenWidth / 2,
          ),
        ],
      ),
    );
  }
}
