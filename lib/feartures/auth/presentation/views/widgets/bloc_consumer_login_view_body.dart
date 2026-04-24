import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper_functions/build_error_bar.dart';
import 'package:fruits_hub/feartures/auth/presentation/view_models/cubits/LogIn/login_cubit.dart';
import 'package:fruits_hub/feartures/auth/presentation/views/widgets/login_view_body.dart';
import 'package:fruits_hub/feartures/home/presentation/views/home_view.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class BlocConsumerLoginViewBody extends StatelessWidget {
  const BlocConsumerLoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginFailure) {
          buildErrorBar(context, state.errMessage);
        }
        if (state is LoginSuccess) {
          buildErrorBar(context, 'تم تسجيل الدخول بنجاح');
        }
        Navigator.pushNamed(context, HomeView.routeName);
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is LoginLoading ? true : false,
          child: LoginViewBody(),
        );
      },
    );
  }
}
