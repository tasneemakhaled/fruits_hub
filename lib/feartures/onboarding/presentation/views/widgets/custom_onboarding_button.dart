import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';

class CustomOnboardingButton extends StatelessWidget {
  const CustomOnboardingButton({super.key, required this.onPressed, required this.text});
final void Function() onPressed;
final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        
        style: ElevatedButton.styleFrom(backgroundColor: AppColors.primaryColor,shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(16))),
        onPressed: onPressed, child: Text(text,style: TextStyle(color: Colors.white),)),
    );
  }
}