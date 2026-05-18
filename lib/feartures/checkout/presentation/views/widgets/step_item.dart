import 'package:flutter/material.dart';
import 'package:fruits_hub/feartures/checkout/presentation/views/widgets/active_step_item.dart';
import 'package:fruits_hub/feartures/checkout/presentation/views/widgets/inactive_step_item.dart';

class StepItem extends StatelessWidget {
  const StepItem({
    super.key,
    required this.title,
    required this.selectedIndex,
    required this.isActive,
  });
  final String title;
  final int selectedIndex;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveStepItem(title: title)
        : InactiveStepItem(index: selectedIndex, title: title);
  }
}
