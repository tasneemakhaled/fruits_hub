import 'package:flutter/material.dart';
import 'package:fruits_hub/feartures/auth/presentation/views/widgets/custom_text_field.dart';

class AddressView extends StatelessWidget {
  const AddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 16),
          CustomTextField(hintText: 'الاسم كامل'),
          SizedBox(height: 8),
          CustomTextField(hintText: ' البريد الإلكتروني'),
          SizedBox(height: 8),
          CustomTextField(hintText: 'العنوان'),
          SizedBox(height: 8),
          CustomTextField(hintText: 'المدينه'),
          SizedBox(height: 8),
          CustomTextField(hintText: 'رقم الطابق , رقم الشقه ..'),
          SizedBox(height: 8),
          CustomTextField(hintText: 'رقم الهاتف'),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
