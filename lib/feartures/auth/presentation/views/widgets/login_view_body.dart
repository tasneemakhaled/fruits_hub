import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/utils/constants/app_images.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/feartures/auth/presentation/views/sign_up_view.dart';
import 'package:fruits_hub/feartures/auth/presentation/views/widgets/social_login_button.dart';
import 'package:fruits_hub/feartures/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:fruits_hub/feartures/auth/presentation/views/widgets/dont_have_an_account_widget.dart';
import 'package:fruits_hub/feartures/auth/presentation/views/widgets/or_divider.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 16,),
            CustomTextField(hintText: 'البريد الإلكتروني',keyboardType: TextInputType.emailAddress,),
            SizedBox(height: 10,),
             CustomTextField(
              keyboardType: TextInputType.visiblePassword,
              hintText: 'كلمة المرور',suffixIcon: Icon(Icons.visibility,color: Color(0xff949D9E),),),
             SizedBox(height: 8,),
             Align(
              alignment: Alignment.centerLeft,
              child: Text('نسيت كلمة المرور؟',style: TextStyles.semiBold13.copyWith(color: Color(0xff2D9F5D)),)),
              SizedBox(height: 10,),
              CustomButton(text: 'تسجيل دخول',onPressed: (){},),
              SizedBox(height: 16,),
             const  DontHaveAnAccountWidget(),
              SizedBox(height: 32,),
              const  OrDivider(),
        SizedBox(height: 16,),
        SocailLoginButton(leading: SvgPicture.asset(Assets.assetsImagesGoogleIcon),title: Text('تسجيل بواسطة جوجل'),),
        SizedBox(height: 10,),
        SocailLoginButton(leading: SvgPicture.asset(Assets.assetsImagesAppleIcon),title: Text('تسجيل بواسطة أبل'),),
        SizedBox(height: 10,),
        SocailLoginButton(leading: SvgPicture.asset(Assets.assetsImagesFacebookIcon),title: Text('تسجيل بواسطة فيسبوك'),),
          ],
        ),
      ),
    );
  }
}