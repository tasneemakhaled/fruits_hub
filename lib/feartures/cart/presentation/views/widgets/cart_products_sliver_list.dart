import 'package:flutter/material.dart';
import 'package:fruits_hub/feartures/cart/presentation/views/widgets/cart_product_item.dart';

class CartProductsSliverList extends StatelessWidget {
  const CartProductsSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: 3,
      separatorBuilder: (context, index) {
        return Divider(height: 16, color: Color(0xfff1f1f5));
      },
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
          child: CartProductItem(),
        );
      },
    );
  }
}
