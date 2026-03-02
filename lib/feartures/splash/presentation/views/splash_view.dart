import 'package:flutter/material.dart';
import 'package:fruits_hub/feartures/onboarding/presentation/views/onboarding_view.dart';
import 'package:fruits_hub/feartures/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
static const routeName='splash';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    executeNavigation();
    super.initState();
  }

  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    
      body: SafeArea(child: SplashViewBody())
    );
  }
  void executeNavigation() {
    Future.delayed(Duration(seconds: 2),() => Navigator.pushReplacementNamed(context, OnboardingView.routeName));
  }
}
