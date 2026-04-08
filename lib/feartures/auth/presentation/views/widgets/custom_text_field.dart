import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText,  this.suffixIcon, this.keyboardType});
final String hintText;
final Widget? suffixIcon;
final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        suffixIcon:suffixIcon ,
        fillColor: Color(0xfff9fafa),
        filled: true,
        hintText: hintText,
        hintStyle: TextStyles.bold13.copyWith(color: Color(0xff949D9E),),
        border:OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Color(0xffE6E9EA))),
// borderSide: BorderSide.none,        ),
        focusedBorder: OutlineInputBorder(
         borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Color(0xffE6E9EA))),
// borderSide: BorderSide.none,        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Color(0xffE6E9EA))),
// borderSide: BorderSide.none,        ),
      ),
    );
  }
}