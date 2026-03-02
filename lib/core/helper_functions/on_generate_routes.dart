import 'package:flutter/material.dart';
import 'package:fruits_hub/feartures/onboarding/presentation/views/onboarding_view.dart';
import 'package:fruits_hub/feartures/splash/presentation/views/splash_view.dart';

Route<dynamic>onGenerateRoute(RouteSettings setting){
  switch(setting.name){
    case SplashView.routeName: 
     return MaterialPageRoute(builder: (context)=>SplashView());
    case OnboardingView.routeName:
    return MaterialPageRoute(builder: (context)=>OnboardingView());
     default:
     return MaterialPageRoute(builder: (context)=>Scaffold());
  }
}