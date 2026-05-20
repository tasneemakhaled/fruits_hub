import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class ShippingItem extends StatelessWidget {
  const ShippingItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.isSelected,
    this.onTap,
  });
  final String title, subTitle, price;
  final bool isSelected;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(microseconds: 300),
      decoration: ShapeDecoration(
        color: Color(0xfff9fafa),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: isSelected ? AppColors.darkPrimaryColor : Colors.transparent,
          ),
        ),
      ),
      child: ListTile(
        leading: GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: ShapeDecoration(
              color: Color(0xff949d9e),
              shape: RoundedRectangleBorder(
                side: isSelected
                    ? BorderSide.none
                    : BorderSide(width: .5, color: Color(0xff949d9e)),
                borderRadius: BorderRadius.circular(18),
              ),
            ),
            child: CircleAvatar(
              radius: isSelected ? 12 : 9,
              backgroundColor: Colors.white,
              child: isSelected
                  ? CircleAvatar(
                      radius: 6,
                      backgroundColor: AppColors.darkPrimaryColor,
                    )
                  : SizedBox(),
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
