
 import 'package:flutter/material.dart';
import 'package:portfolio/constants/color.dart';
import 'package:portfolio/constants/nav_titles.dart';
class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key, required this.onNavTabItem});
  final Function(int) onNavTabItem ;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: CustomColor.scaffoldBg,
        child: ListView(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 20.0,bottom: 20.0),
                child: IconButton(onPressed: (){
                  Navigator.of(context).pop();
                }, icon:Icon(Icons.close)),
              ),
            ),

            for (int i = 0; i < navIcons.length; i++)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListTile(
                  onTap: (){
                    onNavTabItem (i);
                  },
                  leading: Icon(navIcons[i]),
                  title: Text(navTitle[i],style: kNavtitle,),
                ),
              )
          ],
        )
    );
  }
}
