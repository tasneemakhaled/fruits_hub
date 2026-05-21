import 'package:flutter/material.dart';
import 'package:fruits_hub/feartures/cart/domain/entites/cart_item_entity.dart';
import 'package:fruits_hub/feartures/checkout/presentation/views/widgets/checkout_view_body.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key, required this.cartEntites});
  static const routeName = 'checkout';
  final List<CartItemEntity> cartEntites;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CheckoutViewBody());
  }
}
