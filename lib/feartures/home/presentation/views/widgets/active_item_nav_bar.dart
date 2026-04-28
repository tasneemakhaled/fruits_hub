import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class ActiveItemNavBar extends StatelessWidget {
  const ActiveItemNavBar({
    super.key,
    required this.activeIcon,
    required this.label,
  });
  final String activeIcon, label;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        color: Color(0xffeeeeee),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 14,
            backgroundColor: AppColors.darkPrimaryColor,
            child: SvgPicture.asset(activeIcon),
          ),
          SizedBox(width: 4),
          Text(
            label,
            style: TextStyles.semiBold11.copyWith(
              color: AppColors.darkPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
