import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class InactiveStepItem extends StatelessWidget {
  const InactiveStepItem({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 11.5,
          backgroundColor: Color(0xfff2f3f3),
          child: Text('2', style: AppStyles.semiBold13),
        ),

        SizedBox(width: 4),
        Text(title, style: AppStyles.bold13.copyWith(color: Color(0xffAAAAAA))),
      ],
    );
  }
}
