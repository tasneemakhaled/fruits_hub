import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper_functions/build_error_bar.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_app_bar.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/feartures/checkout/domain/entities/order_entity.dart';

import 'package:fruits_hub/feartures/checkout/presentation/views/widgets/checkout_page_view.dart';
import 'package:fruits_hub/feartures/checkout/presentation/views/widgets/checkout_steps_list_view.dart';
import 'package:provider/provider.dart';

class CheckoutViewBody extends StatefulWidget {
  const CheckoutViewBody({super.key});

  @override
  State<CheckoutViewBody> createState() => _CheckoutViewBodyState();
}

class _CheckoutViewBodyState extends State<CheckoutViewBody> {
  late PageController pageController;
  int selectedIndex = 0;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final ValueNotifier<AutovalidateMode> valueNotifier = ValueNotifier(
    AutovalidateMode.disabled, // listen to streams
  );

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      selectedIndex = pageController.page!.toInt();
      setState(() {});
    });
    // selectedIndex = pageController.page!.toInt();
  }

  @override
  void dispose() {
    pageController.dispose();
    valueNotifier.dispose();
    super.dispose();
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
          CheckoutStepsListView(
            selectedIndex: selectedIndex,
            pageController: pageController,
          ),
          SizedBox(height: 16),
          Expanded(
            child: CheckoutPageView(
              valueListenable: valueNotifier,
              pageController: pageController,
              formKey: formKey,
            ),
          ),
          CustomButton(
            text: selectedIndex > 1 ? 'تأكيد الطلب' : 'التالي',
            onPressed: () {
              if (selectedIndex == 0) {
                validateShippingSection(context);
              }
              if (selectedIndex == 1) {
                handelAddressValidation();
              }
            },
          ),
          SizedBox(height: 32),
        ],
      ),
    );
  }

  void validateShippingSection(BuildContext context) {
    if (context.read<OrderEntity>().payWithCash != null) {
      pageController.animateToPage(
        selectedIndex + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } else {
      buildErrorBar(context, 'يرجي تحديد طريقة الدفع');
    }
  }

  void handelAddressValidation() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      pageController.animateToPage(
        selectedIndex + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } else {
      valueNotifier.value = AutovalidateMode.always;
    }
  }
}
