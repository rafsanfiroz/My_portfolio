import 'package:flutter/material.dart';
import 'package:portfolio/constants/color.dart';
import 'package:portfolio/constants/nav_titles.dart';
import 'package:portfolio/widget/site_logo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({
    super.key,
    required this.onNavMenuTap,
  });

  final Function(int) onNavMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      decoration: kHeaderDecoration,
      height: 60,
      width: double.maxFinite,
      child: Row(
        children: [
          SiteLogo(
            onTap: () {},
          ),
          const Spacer(),
          for (int i = 0; i < navTitle.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
                  onPressed: () {
                    onNavMenuTap(i);
                  },
                  child: Text(
                    navTitle[i],
                    style: kNavtitle,
                  )),
            ),
        ],
      ),
    );
  }
}
