import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper_functions/build_error_bar.dart';
import 'package:fruits_hub/feartures/checkout/domain/entities/order_entity.dart';
import 'package:fruits_hub/feartures/checkout/presentation/views/widgets/step_item.dart';

class CheckoutStepsListView extends StatefulWidget {
  CheckoutStepsListView({
    super.key,
    this.selectedIndex = 0,
    required this.pageController,
  });
  int selectedIndex;
  final PageController pageController;
  @override
  State<CheckoutStepsListView> createState() => _CheckoutStepsListViewState();
}

List<String> titles = ['الشحن', 'العنوان', 'الدفع', 'المراجعة'];
int isSelected = 0;

class _CheckoutStepsListViewState extends State<CheckoutStepsListView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(titles.length, (index) {
        return GestureDetector(
          onTap: () {
            if (context.read<OrderEntity>().payWithCash != null) {
              isSelected = index;
              widget.selectedIndex = index;
              setState(() {});
              setState(() {
                widget.pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
              });
            } else {
              buildErrorBar(context, 'يرجي تحديد طريقة الدفع');
            }
          },
          child: StepItem(
            title: titles[index],
            selectedIndex: index + 1,
            isActive: index <= widget.selectedIndex,
          ),
        );
      }),
    );
  }
}
