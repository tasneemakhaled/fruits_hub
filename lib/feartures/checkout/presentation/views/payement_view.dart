import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/utils/constants/app_images.dart';
import 'package:fruits_hub/feartures/auth/presentation/views/widgets/custom_text_field.dart';

class PayementView extends StatelessWidget {
  const PayementView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('أختار طريقه الدفع المناسبه :', style: AppStyles.bold13),
          Text(
            'من فضلك اختر طريقه الدفع المناسبه لك.',
            style: AppStyles.regular13.copyWith(color: Color(0xff616A6B)),
          ),
          // Row(
          //   children: [
          //     // Image.asset(AppImages.assetsImagesPay),
          //     // Image.asset(AppImages.assetsImagesPaypal),
          //     Image.asset(AppImages.assetsImagesMastercard),
          //     Image.asset(AppImages.assetsImagesVisa),
          //   ],
          // ),
          SizedBox(width: 8),
          CustomTextField(hintText: 'اسم حامل البطاقه'),
          SizedBox(height: 8),
          CustomTextField(hintText: 'رقم البطاقة'),
          SizedBox(height: 8),
          Row(
            children: [
              SizedBox(
                width: 160,
                child: CustomTextField(hintText: 'تاريخ الصلاحيه'),
              ),
              SizedBox(width: 4),
              SizedBox(width: 160, child: CustomTextField(hintText: 'CVV')),
            ],
          ),
          // CustomButton(text: 'تأكيد & استمرار', onPressed: () {}),
        ],
      ),
    );
  }
}
