import 'package:flutter/material.dart';
import 'package:fruits_hub/feartures/cart/presentation/views/widgets/cart_product_item.dart';

class CartProductsSliverList extends StatelessWidget {
  const CartProductsSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return CartProductItem();
      },
    );
  }
}
