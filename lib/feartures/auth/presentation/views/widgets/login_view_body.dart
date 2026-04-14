import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/utils/constants/app_images.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/password_field.dart';
import 'package:fruits_hub/feartures/auth/presentation/view_models/cubits/LogIn/login_cubit.dart';
import 'package:fruits_hub/feartures/auth/presentation/views/widgets/social_login_button.dart';
import 'package:fruits_hub/feartures/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:fruits_hub/feartures/auth/presentation/views/widgets/dont_have_an_account_widget.dart';
import 'package:fruits_hub/feartures/auth/presentation/views/widgets/or_divider.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, password;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Form(
          autovalidateMode: autovalidateMode,
          key: globalKey,
          child: Column(
            children: [
              SizedBox(height: 16),
              CustomTextField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: 'البريد الإلكتروني',
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 10),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
              ),

              SizedBox(height: 8),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'نسيت كلمة المرور؟',
                  style: TextStyles.semiBold13.copyWith(
                    color: Color(0xff2D9F5D),
                  ),
                ),
              ),
              SizedBox(height: 10),
              CustomButton(
                text: 'تسجيل دخول',
                onPressed: () {
                  if (globalKey.currentState!.validate()) {
                    globalKey.currentState!.save();
                    context.read<LoginCubit>().signInWithEmailAndPassword(
                      email,
                      password,
                    );
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
              SizedBox(height: 16),
              const DontHaveAnAccountWidget(),
              SizedBox(height: 32),
              const OrDivider(),
              SizedBox(height: 16),
              SocailLoginButton(
                onTap: () {
                  context.read<LoginCubit>().signInWithGoogle();
                },
                leading: SvgPicture.asset(Assets.assetsImagesGoogleIcon),
                title: Text('تسجيل بواسطة جوجل'),
              ),
              SizedBox(height: 10),
              SocailLoginButton(
                onTap: () {
                  context.read<LoginCubit>().signInWithApple();
                },
                leading: SvgPicture.asset(Assets.assetsImagesAppleIcon),
                title: Text('تسجيل بواسطة أبل'),
              ),
              SizedBox(height: 10),
              SocailLoginButton(
                onTap: () {
                  context.read<LoginCubit>().signInWithFacebook();
                },
                leading: SvgPicture.asset(Assets.assetsImagesFacebookIcon),
                title: Text('تسجيل بواسطة فيسبوك'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
