import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/constants/app_images.dart';
import 'package:fruits_hub/feartures/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
static const routeName='splash';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    
      body: SafeArea(child: SplashViewBody())
    );
  }
}