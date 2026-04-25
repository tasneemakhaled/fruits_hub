import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/constants/app_images.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [SvgPicture.asset(AppImages.assetsImagesPlant)],
        ),
        SvgPicture.asset(AppImages.assetsImagesLogo),
        SvgPicture.asset(AppImages.assetsImagesCircles, fit: BoxFit.fill),
      ],
    );
  }
}
