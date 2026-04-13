import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/feartures/auth/presentation/view_models/cubits/LogIn/login_cubit.dart';
import 'package:fruits_hub/feartures/auth/presentation/views/widgets/login_view_body.dart';

class BlocConsumerLoginViewBody extends StatelessWidget {
  const BlocConsumerLoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return LoginViewBody();
      },
    );
  }
}
