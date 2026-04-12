import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/services/get_it_service.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/feartures/auth/domain/repos/auth_repo.dart';
import 'package:fruits_hub/feartures/auth/presentation/view_models/cubits/SignUp/sign_up_cubit.dart';
import 'package:fruits_hub/feartures/auth/presentation/views/widgets/bloc_consumer_signup_view_body.dart';


class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const routeName = 'signUp';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_new),
          ),
          title: Text('حساب جديد', style: TextStyles.bold19),
        ),
        body: BlocConsumerSignupViewBody(),
      ),
    );
  }
}
