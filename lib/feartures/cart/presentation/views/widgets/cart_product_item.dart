import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/utils/constants/app_images.dart';
import 'package:fruits_hub/feartures/cart/domain/entites/cart_item_entity.dart';
import 'package:fruits_hub/feartures/cart/presentation/views/widgets/cart_items_action_buttons.dart';

class CartProductItem extends StatelessWidget {
  const CartProductItem({super.key, required this.cartItemEntity});
  final CartItemEntity cartItemEntity;
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Container(
            width: 73,
            height: 92,
            decoration: BoxDecoration(color: Color(0xfff3f5f7)),
            child: Center(
              child: Image.network(
                width: 53,
                height: 40,
                cartItemEntity.productsEntity.imageUrl!,
              ),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      cartItemEntity.productsEntity.name,
                      style: TextStyles.bold13,
                    ),
                    Spacer(),

                    GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset(AppImages.assetsImagesTrash),
                    ),
                  ],
                ),
                SizedBox(height: 6),
                Text(
                  '${cartItemEntity.calculateTotalWeight()}كم',
                  style: TextStyles.regular13.copyWith(
                    color: Color(0xffF4A91F),
                  ),
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    CartItemsActionButtons(),
                    Spacer(),
                    Text(
                      '${cartItemEntity.calculateTotalPrice()}جنيه',
                      style: TextStyles.bold13.copyWith(
                        color: Color(0xffF4A91F),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
