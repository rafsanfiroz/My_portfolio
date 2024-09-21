import 'package:flutter/material.dart';
import 'package:portfolio/constants/color.dart';
import 'package:portfolio/widget/site_logo.dart';
 class HeaderMobile extends StatelessWidget {
   const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
   final VoidCallback? onLogoTap ;
   final VoidCallback? onMenuTap;
   @override
   Widget build(BuildContext context) {
     return   Container(
       margin: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
       decoration: kHeaderDecoration,
       height: 60,
       width: double.maxFinite,
       child: Row(
         children: [
           SiteLogo(onTap: onLogoTap),
           const Spacer(),
           IconButton(onPressed: onMenuTap, icon: Icon(Icons.menu)),
           const SizedBox(width: 15.0,),
         ],
       ),
     );
   }
 }
