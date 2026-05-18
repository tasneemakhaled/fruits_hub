import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/constants/app_images.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, this.isVisible = true});
  final Widget title;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.arrow_back_ios),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      title: title,
      actions: [
        Visibility(
          visible: isVisible,
          child: SvgPicture.asset(AppImages.assetsImagesNotificationIcon),
        ),
      ],
    );
  }
}
