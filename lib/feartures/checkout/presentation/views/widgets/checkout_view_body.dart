import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_app_bar.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/feartures/checkout/presentation/views/widgets/checkout_page_view.dart';
import 'package:fruits_hub/feartures/checkout/presentation/views/widgets/checkout_steps_list_view.dart';

class CheckoutViewBody extends StatefulWidget {
  const CheckoutViewBody({super.key});

  @override
  State<CheckoutViewBody> createState() => _CheckoutViewBodyState();
}

late PageController pageController;

class _CheckoutViewBodyState extends State<CheckoutViewBody> {
  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          CustomAppBar(
            isNotificationVisible: false,
            title: Text('الشحن', style: AppStyles.bold19),
          ),
          SizedBox(height: 20),
          CheckoutStepsListView(),
          Expanded(child: CheckoutPageView(pageController: pageController)),
          CustomButton(
            text: 'التالي',
            onPressed: () {
              pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease,
              );
            },
          ),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}
