import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_app_bar.dart';
import 'package:fruits_hub/feartures/checkout/presentation/views/widgets/active_step_item.dart';
import 'package:fruits_hub/feartures/checkout/presentation/views/widgets/inactive_step_item.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          isNotificationVisible: false,
          title: Text('الشحن', style: AppStyles.bold19),
        ),
        ActiveStepItem(title: 'الشحن'),
        InactiveStepItem(title: 'العنوان'),
      ],
    );
  }
}
