import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/feartures/auth/presentation/views/login_view.dart';
import 'package:fruits_hub/feartures/auth/presentation/views/widgets/custom_text_field.dart';

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
      child: Column(
        children: [
          CustomTextField(hintText: 'الاسم كامل'),
          SizedBox(height: 8,),
          CustomTextField(hintText: 'البريد الإلكتروني'),
          SizedBox(height: 8,),
          CustomTextField(hintText: 'كلمة المرور',suffixIcon: Icon(Icons.visibility,color: Color(0xff949D9E),),),
          SizedBox(height: 8,),
           Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Checkbox(
        value: _isChecked,
        onChanged: (val) => setState(() => _isChecked = val ?? false),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        side: BorderSide(color: Color(0xffCCCCCC), width: 1.5),
      ),
      Expanded(
        child: Wrap(
          children: [
            Text(
              'من خلال إنشاء حساب، فإنك توافق على ',
              style: TextStyles.semiBold13.copyWith(color: Color(0xff949D9E)),
            ),
            Text(
              'الشروط والأحكام الخاصة بنا',
              style: TextStyles.semiBold13.copyWith(color: Color(0xff1B5E37)),
            ),
          ],
        ),
      ),
    ],
  ),
          SizedBox(height: 8,),
          CustomButton(text: 'إنشاء حساب جديد',onPressed: (){},),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('تمتلك حساب بالفعل؟',style: TextStyles.semiBold16.copyWith(color: Color(0xff949D9E)),),
              TextButton(onPressed: (){
                Navigator.pushReplacementNamed(context, LoginView.routeName);
              }, child: Text('تسجيل الدخول',style: TextStyles.semiBold16.copyWith(color: Color(0xff1B5E37)),),),
            ],
          )
        ],
      ),
    );
  }
}