import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class ShippingItem extends StatelessWidget {
  const ShippingItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.price,
  });
  final String title, subTitle, price;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff9fafa),
      child: ListTile(
        leading: Container(
          decoration: ShapeDecoration(
            color: Color(0xff949d9e),
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0xff949d9e)),
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          child: CircleAvatar(
            radius: 9,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 4.5,
              backgroundColor: AppColors.darkPrimaryColor,
            ),
          ),
        ),
        title: Text(title, style: AppStyles.semiBold13),
        subtitle: Text(
          subTitle,
          style: AppStyles.regular13.copyWith(color: Color(0xff8c8c8c)),
        ),
        trailing: Text(
          price,
          style: AppStyles.bold13.copyWith(color: Color(0xff3A8B33)),
        ),
      ),
    );
  }
}
