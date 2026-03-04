import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({super.key, this.currentPage});
final  currentPage;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(dotsCount: 2,decorator: DotsDecorator(activeColor: AppColors.primaryColor,color:currentPage==1?AppColors.primaryColor: Color(0xff5DB957)),);
  }
}