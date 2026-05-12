import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fruits_hub/core/entities/products_entity.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

import 'package:fruits_hub/core/widgets/custom_network_image.dart';
import 'package:fruits_hub/feartures/cart/presentation/view_models/cubit/cart_cubit.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key, required this.productsEntity});
  final ProductsEntity productsEntity;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(color: Color(0xfff3f5f7)),
      child: Stack(
        children: [
          Positioned(child: Icon(Icons.favorite_border)),
          Positioned.fill(
            child: Column(
              children: [
                SizedBox(height: 20),
                productsEntity.imageUrl != null
                    ? Flexible(
                        child: CustomNetworkImage(
                          imageUrl: productsEntity.imageUrl!,
                        ),
                      )
                    : Container(color: Colors.grey, height: 80, width: 100),
                SizedBox(height: 20),
                ListTile(
                  trailing: CircleAvatar(
                    backgroundColor: AppColors.darkPrimaryColor,
                    child: IconButton(
                      onPressed: () {
                        context.read<CartCubit>().addItemToCart(
                          productsEntity: productsEntity,
                        );
                      },
                      icon: Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                  title: FittedBox(
                    child: Text(
                      productsEntity.name,
                      style: TextStyles.semiBold13,
                    ),
                  ),
                  subtitle: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: productsEntity.price.toString(),
                          style: TextStyles.bold13.copyWith(
                            color: Color(0xfff3bf60),
                          ),
                        ),
                        TextSpan(
                          text: 'جنيه/الكيلو',
                          style: TextStyles.bold13.copyWith(
                            color: Color(0xfff5d69c),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
