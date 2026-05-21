import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/feartures/checkout/presentation/views/address_view.dart';
import 'package:fruits_hub/feartures/checkout/presentation/views/confirmation_view.dart';
import 'package:fruits_hub/feartures/checkout/presentation/views/payement_view.dart';
import 'package:fruits_hub/feartures/checkout/presentation/views/shipping_view.dart';

class CheckoutPageView extends StatelessWidget {
  const CheckoutPageView({
    super.key,
    required this.pageController,
    required this.formKey,
    required this.valueListenable,
  });
  final PageController pageController;
  final GlobalKey<FormState> formKey;
  final ValueListenable<AutovalidateMode> valueListenable;
  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: pageController,
      children: [
        ShippingView(),
        AddressView(formKey: formKey, valueListenable: valueListenable),
        PayementView(),
        ConfirmationView(),
      ],
    );
  }
}
