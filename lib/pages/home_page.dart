import 'package:flutter/material.dart';
import 'package:portfolio/constants/color.dart';
import 'package:portfolio/constants/size.dart';
import 'package:portfolio/widget/contact.dart';
import 'package:portfolio/widget/drawer_mobile.dart';
import 'package:portfolio/widget/footer.dart';
import 'package:portfolio/widget/header_desktop.dart';
import 'package:portfolio/widget/header_mobile.dart';
import 'package:portfolio/widget/main_desktop.dart';
import 'package:portfolio/widget/main_mobile.dart';
import 'package:portfolio/widget/skill_desktop.dart';
import 'package:portfolio/widget/skill_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();

  final List<GlobalKey> navbarkeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: constraints.maxWidth >= KdesktopMinWidth
            ? null
            : DrawerMobile(
                onNavTabItem: (int navIndex) {
                  scaffoldKey.currentState?.closeEndDrawer();
                  scrollToSection(navIndex);
                },
              ),
        body: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.vertical,
          child: Column(
            // scrollDirection: Axis.vertical,
            children: [
              SizedBox(key: navbarkeys.first),
              if (constraints.maxWidth >= KdesktopMinWidth)
                HeaderDesktop(
                  onNavMenuTap: (int navIndex) {
                    scrollToSection(navIndex);
                  },
                )
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
              constraints.maxWidth >= KdesktopMinWidth
                  ? MainDesktop()
                  : MainMobile(),
              //skill
              Container(
                key: navbarkeys[1],
                padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                width: screenWidth,
                color: CustomColor.bgLight1,
                // tittle
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'What I can do',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: CustomColor.whitePrimary,
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    if (constraints.maxWidth >= KdesktopMedWidth)
                      const SkillDesktop()
                    else
                      SkillMobile()
                    //platform
                  ],
                ),
              ), //skill
              // Container(
              //   height: 500,
              //   width: double.maxFinite,
              // ), //project
              const SizedBox(
                height: 20.0,
              ),
              //contact
              Contact(key: navbarkeys[2]),
              const SizedBox(
                height: 30,
              ),
              Footer(), //footer
            ],
          ),
        ),
      );
    });
  }
  void scrollToSection(int navIndex) {
    if (navIndex == 4) {
      return;
    }
    final key = navbarkeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
