import 'package:flutter/material.dart';
import 'package:fruits_hub/feartures/checkout/presentation/views/widgets/shipping_item.dart';

class ShippingView extends StatelessWidget {
  const ShippingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShippingItem(
          isSelected: true,
          title: 'الدفع عند الاستلام',
          subTitle: 'التسليم من المكان',
          price: '40 جنيه',
        ),
        SizedBox(height: 16),
        ShippingItem(
          isSelected: false,
          title: 'اشتري الان وادفع لاحقا',
          subTitle: 'يرجي تحديد طريقه الدفع',
          price: 'مجاني',
        ),
      ],
    );
  }
}
