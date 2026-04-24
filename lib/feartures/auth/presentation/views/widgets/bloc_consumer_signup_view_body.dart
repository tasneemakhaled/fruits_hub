import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper_functions/build_error_bar.dart';
import 'package:fruits_hub/feartures/auth/presentation/view_models/cubits/SignUp/sign_up_cubit.dart';
import 'package:fruits_hub/core/widgets/custom_prgress_hud.dart';
import 'package:fruits_hub/feartures/auth/presentation/views/widgets/sign_up_view_body.dart';
import 'package:fruits_hub/feartures/home/presentation/views/home_view.dart';

class BlocConsumerSignupViewBody extends StatelessWidget {
  const BlocConsumerSignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpFailure) {
          buildErrorBar(context, state.message);
        }
        if (state is SignUpSuccess) {
          // ScaffoldMessenger.of(
          //   context,
          // ).showSnackBar(SnackBar(content: Text('تم التسجيل بنجاح ')));
          Navigator.pop(context);
          // Navigator.pushReplacementNamed(context, HomeView.routeName);
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
          inAsyncCall: state is SignUpLoading ? true : false,
          child: SignUpViewBody(),
        );
      },
    );
  }
}
