import 'package:flutter/material.dart';
import 'package:fruits_hub/feartures/checkout/presentation/views/address_view.dart';
import 'package:fruits_hub/feartures/checkout/presentation/views/payement_view.dart';
import 'package:fruits_hub/feartures/checkout/presentation/views/shipping_view.dart';

class CheckoutPageView extends StatelessWidget {
  const CheckoutPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: pageController,
      children: [ShippingView(), AddressView(), PayementView()],
    );
  }
}
