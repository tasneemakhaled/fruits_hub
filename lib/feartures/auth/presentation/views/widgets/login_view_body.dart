import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/utils/constants/app_images.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/feartures/auth/presentation/views/sign_up_view.dart';
import 'package:fruits_hub/feartures/auth/presentation/views/widgets/custom_login_method_button.dart';
import 'package:fruits_hub/feartures/auth/presentation/views/widgets/custom_text_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          CustomTextField(hintText: 'البريد الإلكتروني'),
          SizedBox(height: 10,),
           CustomTextField(hintText: 'كلمة المرور',suffixIcon: Icon(Icons.visibility,color: Color(0xff949D9E),),),
           SizedBox(height: 8,),
           Align(
            alignment: Alignment.centerLeft,
            child: Text('نسيت كلمة المرور؟',style: TextStyles.semiBold13.copyWith(color: Color(0xff2D9F5D)),)),
            SizedBox(height: 10,),
            CustomButton(text: 'تسجيل دخول',onPressed: (){},),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
            Text('لا تمتلك حساب؟ ',style: TextStyles.semiBold16.copyWith(color: Color(0xff949D9E)),),
            TextButton(
              onPressed: (){
           Navigator.pushReplacementNamed(context, SignUpView.routeName);
              },
             child:Text('قم بانشاء حساب',style: TextStyles.semiBold16.copyWith(color: Color(0xff1B5E37)),) ),
            ] ),
            SizedBox(height: 24,),
          Row(
  children: [
    Expanded(child: Divider(color: Color(0xffE6E9EA))),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Text('أو', style: TextStyle(color: Color(0xff0C0D0D))),
    ),
    
    Expanded(child: Divider(color: Color(0xffE6E9EA))),
  ],
),
SizedBox(height: 8,),
CustomLoginMethodButton(leading: SvgPicture.asset(Assets.assetsImagesGoogleIcon),title: Text('تسجيل بواسطة جوجل'),),
SizedBox(height: 10,),
CustomLoginMethodButton(leading: SvgPicture.asset(Assets.assetsImagesAppleIcon),title: Text('تسجيل بواسطة أبل'),),
SizedBox(height: 10,),
CustomLoginMethodButton(leading: SvgPicture.asset(Assets.assetsImagesFacebookIcon),title: Text('تسجيل بواسطة فيسبوك'),),
        ],
      ),
    );
  }
}