import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/feartures/auth/presentation/views/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
static const routeName='signUp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: (){},
         icon: Icon( Icons.arrow_back_ios)),
        title: Text('حساب جديد',style: TextStyles.bold19,),
      ),
      body: SignUpViewBody(),
    );
  }
}