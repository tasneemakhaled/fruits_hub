import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('تمتلك حساب بالفعل؟',style: TextStyles.semiBold16.copyWith(color: Color(0xff949D9E)),),
                TextButton(onPressed: (){
                  Navigator.pop(context);
                  // Navigator.pushReplacementNamed(context, LoginView.routeName);
                }, child: Text('تسجيل الدخول',style: TextStyles.semiBold16.copyWith(color: Color(0xff1B5E37)),),),
              ],
            );
  }
}