import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class ConfirmationView extends StatelessWidget {
  const ConfirmationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('ملخص الطلب :', style: AppStyles.bold13),
        Container(
          decoration: BoxDecoration(
            color: Color(0xfff8f8f8),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text('المجموع الفرعي :'),
                  Spacer(),
                  Text('150 جنيه'),
                ],
              ),
              Row(children: [Text('التوصيل  :'), Spacer(), Text('30جنية')]),
              Divider(color: Color(0xffCACECE)),
              Row(children: [Text('الكلي'), Spacer(), Text('180 جنيه')]),
            ],
          ),
        ),
        Text('يرجي تأكيد  طلبك', style: AppStyles.bold13),
        SizedBox(height: 8),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xfff8f8f8),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('وسيلة الدفع', style: AppStyles.bold13),
              Text('0223466677544'),
            ],
          ),
        ),
        SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Color(0xfff8f8f8),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [Text('عنوان التوصيل', style: AppStyles.bold13)]),
              Row(children: [Text('شارع النيل، مبنى رقم ١٢٣')]),
            ],
          ),
        ),
      ],
    );
  }
}
