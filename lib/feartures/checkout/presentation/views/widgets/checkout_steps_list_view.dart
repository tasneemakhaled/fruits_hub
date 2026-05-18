import 'package:flutter/material.dart';
import 'package:fruits_hub/feartures/checkout/presentation/views/widgets/inactive_step_item.dart';
import 'package:fruits_hub/feartures/checkout/presentation/views/widgets/step_item.dart';

class CheckoutStepsListView extends StatefulWidget {
  const CheckoutStepsListView({super.key});

  @override
  State<CheckoutStepsListView> createState() => _CheckoutStepsListViewState();
}

List<String> titles = ['الشحن', 'العنوان', 'الدفع', 'المراجعة'];
int isSelected = 0;
int selectedIndex = 0;

class _CheckoutStepsListViewState extends State<CheckoutStepsListView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(titles.length, (index) {
        return GestureDetector(
          onTap: () {
            isSelected = index;
            selectedIndex = index;

            setState(() {});
          },
          child: StepItem(
            title: titles[index],
            selectedIndex: index + 1,
            isActive: isSelected == index,
          ),
        );
      }),
    );
  }
}
