import 'package:flutter/material.dart';

import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/feartures/cart/domain/entites/cart_item_entity.dart';

class CartItemsActionButtons extends StatelessWidget {
  const CartItemsActionButtons({super.key, required this.cartItemEntity});
  final CartItemEntity cartItemEntity;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: CircleAvatar(
            backgroundColor: AppColors.darkPrimaryColor,
            child: Center(
              child: GestureDetector(
                onTap: () {},
                child: Icon(size: 16, Icons.add, color: Colors.white),
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        Text('${cartItemEntity.count}'),
        SizedBox(width: 10),
        SizedBox(
          width: 24,
          height: 24,
          child: CircleAvatar(
            backgroundColor: Color(0xffF3F5F7),
            child: Center(
              child: GestureDetector(
                onTap: () {},
                child: Icon(size: 16, Icons.remove, color: Color(0xff979899)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
