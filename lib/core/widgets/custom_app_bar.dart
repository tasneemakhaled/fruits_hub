import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/constants/app_images.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.isNotificationVisible = true,
  });
  final Widget title;
  final bool isNotificationVisible;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.arrow_back_ios),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      title: title,
      actions: [
        Visibility(
          visible: isNotificationVisible,
          child: SvgPicture.asset(AppImages.assetsImagesNotificationIcon),
        ),
      ],
    );
  }
}
