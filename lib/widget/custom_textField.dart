import 'package:flutter/material.dart';
import 'package:portfolio/constants/color.dart';
class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key,
     this.controller,
     this.hintText,
    this.maxLines =1,
  }
  );

  final TextEditingController? controller ;
  final String? hintText;
  final int maxLines ;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      controller: controller,
      style: TextStyle(
        fontSize: 24,
        color: CustomColor.scaffoldBg,

      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(16),
        filled: true,
        fillColor: CustomColor.whiteSecondary,
        hintText: hintText,
        hintStyle: TextStyle(color: CustomColor.hintDark),

        focusedBorder: getInputBorder,
        enabledBorder: getInputBorder,
        border: getInputBorder,

      ),
    );
  }
  OutlineInputBorder get getInputBorder {

    return  OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,

    );
  }
}
