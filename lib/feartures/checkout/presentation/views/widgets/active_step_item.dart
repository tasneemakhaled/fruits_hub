import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/utils/constants/app_images.dart';

class ActiveStepItem extends StatelessWidget {
  const ActiveStepItem({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 11.5,
          backgroundColor: AppColors.darkPrimaryColor,
          child: SvgPicture.asset(AppImages.assetsImagesCheck, height: 12),
        ),

        SizedBox(width: 4),
        Text(
          title,
          style: AppStyles.bold13.copyWith(color: AppColors.darkPrimaryColor),
        ),
      ],
    );
  }
}
