import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/feartures/auth/presentation/views/login_view.dart';
import 'package:fruits_hub/feartures/auth/presentation/views/widgets/already_have_account.dart';
import 'package:fruits_hub/feartures/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:fruits_hub/feartures/auth/presentation/views/widgets/terms_and_conditions_widget.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  bool _isChecked=false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24,),
            CustomTextField(hintText: 'الاسم كامل',keyboardType: TextInputType.name,),
            SizedBox(height: 10,),
            CustomTextField(hintText: 'البريد الإلكتروني',keyboardType: TextInputType.emailAddress,),
            SizedBox(height: 10,),
            CustomTextField(
              keyboardType: TextInputType.visiblePassword,
              hintText: 'كلمة المرور',suffixIcon: Icon(Icons.visibility,color: Color(0xff949D9E),),),
            SizedBox(height: 16,),
            TermsAndConditionsWidget(),
            SizedBox(height: 30,),
            CustomButton(text: 'إنشاء حساب جديد',onPressed: (){},),
            SizedBox(height: 24,),
           AlreadyHaveAccount(),
            
          ],
        ),
      ),
    );
  }
}