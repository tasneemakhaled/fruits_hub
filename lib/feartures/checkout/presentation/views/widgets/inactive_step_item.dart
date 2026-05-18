import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class InactiveStepItem extends StatelessWidget {
  const InactiveStepItem({super.key, required this.index, required this.title});
  final int index;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 11.5,
          backgroundColor: Color(0xfff2f3f3),
          child: Text(index.toString(), style: AppStyles.semiBold13),
        ),

        SizedBox(width: 4),
        Text(title, style: AppStyles.bold13.copyWith(color: Color(0xffAAAAAA))),
      ],
    );
  }
}
