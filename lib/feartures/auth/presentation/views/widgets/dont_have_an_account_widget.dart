import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/feartures/auth/presentation/views/sign_up_view.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
              Text('لا تمتلك حساب؟ ',style: TextStyles.semiBold16.copyWith(color: Color(0xff949D9E)),),
              GestureDetector(
               onTap: (){
              Navigator.pushNamed(context, SignUpView.routeName);
               },
               child: Text('قم بانشاء حساب',style: TextStyles.semiBold16.copyWith(color: Color(0xff1B5E37)),)),
              ] );
  }
}