import 'package:flutter/material.dart';
import 'package:portfolio/constants/color.dart';
import 'package:portfolio/constants/skill_item.dart';

class SkillMobile extends StatelessWidget {
  const SkillMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < platformItems.length; i++)
          Container(
            margin: const EdgeInsets.only(bottom: 5.0),
            constraints: const BoxConstraints(maxWidth: double.maxFinite),
            decoration: BoxDecoration(
              color: CustomColor.bgLight2,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: ListTile(
              leading: Image.asset(
                platformItems[i]["img"],
                width: 26.0,
              ),
              title: Text(platformItems[i]["title"]),
            ),
          ),
        const SizedBox(
          height: 15.0,
        ),
        Wrap(
          spacing: 10.0,
          runSpacing: 10.0,
          children: [
            for (int i = 0; i < skillItems.length; i++)
              Chip(
                label: Text(skillItems[i]["title"]),
                avatar: Image.asset(skillItems[i]["img"]),
                backgroundColor: CustomColor.bgLight2,
              )
          ],
        ),
      ],
    );
  }
}
