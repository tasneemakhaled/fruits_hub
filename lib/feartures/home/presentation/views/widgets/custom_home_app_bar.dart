import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/utils/constants/app_images.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Color(0xff5DB957),
        child: Image.asset(height: 35, AppImages.assetsImagesProfileImage),
      ),
      subtitle: Text('تسنيم خالد', style: TextStyles.bold16),
      trailing: SvgPicture.asset(AppImages.assetsImagesNotificationIcon),
      title: Text(
        'صباح الخير!..',
        style: TextStyles.regular16.copyWith(color: Color(0xff949D9E)),
      ),
    );
  }
}
