import 'package:flutter/material.dart';
import 'package:fruits_hub/feartures/cart/domain/entites/cart_entity.dart';
import 'package:fruits_hub/feartures/checkout/domain/entities/order_entity.dart';
import 'package:fruits_hub/feartures/checkout/presentation/views/widgets/checkout_view_body.dart';
import 'package:provider/provider.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key, required this.cartEntity});
  static const routeName = 'checkout';
  final CartEntity cartEntity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Provider.value(
        value: OrderEntity(cartEntity: cartEntity),
        child: CheckoutViewBody(),
      ),
    );
  }
}
