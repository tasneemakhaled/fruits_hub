import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/feartures/checkout/presentation/views/widgets/checkout_steps_list_view.dart';

class ShippingItem extends StatefulWidget {
  const ShippingItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.isSelected,
  });
  final String title, subTitle, price;
  final bool isSelected;
  @override
  State<ShippingItem> createState() => _ShippingItemState();
}

class _ShippingItemState extends State<ShippingItem> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Color(0xfff9fafa),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: widget.isSelected
                ? AppColors.darkPrimaryColor
                : Colors.transparent,
          ),
        ),
      ),
      child: ListTile(
        leading: GestureDetector(
          onTap: () {
            isClicked = true;
            setState(() {});
          },
          child: Container(
            decoration: ShapeDecoration(
              color: Color(0xff949d9e),
              shape: RoundedRectangleBorder(
                side: widget.isSelected
                    ? BorderSide.none
                    : BorderSide(width: .5, color: Color(0xff949d9e)),
                borderRadius: BorderRadius.circular(18),
              ),
            ),
            child: CircleAvatar(
              radius: widget.isSelected ? 12 : 9,
              backgroundColor: Colors.white,
              child: widget.isSelected
                  ? CircleAvatar(
                      radius: 6,
                      backgroundColor: AppColors.darkPrimaryColor,
                    )
                  : SizedBox(),
            ),
          ),
        ),
        title: Text(widget.title, style: AppStyles.semiBold13),
        subtitle: Text(
          widget.subTitle,
          style: AppStyles.regular13.copyWith(color: Color(0xff8c8c8c)),
        ),
        trailing: Text(
          widget.price,
          style: AppStyles.bold13.copyWith(color: Color(0xff3A8B33)),
        ),
      ),
    );
  }
}
