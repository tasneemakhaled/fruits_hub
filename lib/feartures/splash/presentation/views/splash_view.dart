import 'package:flutter/material.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/services/firebase_auth_service.dart';
import 'package:fruits_hub/core/services/firestore_service.dart';
import 'package:fruits_hub/core/services/shared_prefrences_single_ton.dart';
import 'package:fruits_hub/feartures/auth/presentation/views/login_view.dart';
import 'package:fruits_hub/feartures/home/presentation/views/home_view.dart';
import 'package:fruits_hub/feartures/onboarding/presentation/views/onboarding_view.dart';
import 'package:fruits_hub/feartures/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static const routeName = 'splash';

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
    return Scaffold(body: SafeArea(child: SplashViewBody()));
  }

  void executeNavigation() {
    bool isOnboardingViewSeen = SharedPrefrencesSingleTon.getBool(
      kIsOnboardingViewSeen,
    );
    Future.delayed(Duration(seconds: 2), () {
      if (isOnboardingViewSeen) {
        var isLoggedIn = FirebaseAuthService().isLoggedIn();
        if (isLoggedIn) {
          Navigator.pushReplacementNamed(context, HomeView.routeName);
        } else {
          Navigator.pushReplacementNamed(context, LoginView.routeName);
        }
      } else {
        Navigator.pushReplacementNamed(context, OnboardingView.routeName);
      }
    });
  }
}
