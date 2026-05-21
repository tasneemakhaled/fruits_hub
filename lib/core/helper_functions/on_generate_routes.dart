import 'package:flutter/material.dart';
import 'package:fruits_hub/feartures/auth/presentation/views/login_view.dart';
import 'package:fruits_hub/feartures/auth/presentation/views/sign_up_view.dart';
import 'package:fruits_hub/feartures/cart/domain/entites/cart_entity.dart';
import 'package:fruits_hub/feartures/cart/domain/entites/cart_item_entity.dart';
import 'package:fruits_hub/feartures/cart/presentation/cart_view.dart';
import 'package:fruits_hub/feartures/checkout/presentation/views/checkout_view.dart';
import 'package:fruits_hub/feartures/home/presentation/views/main_view.dart';
import 'package:fruits_hub/feartures/onboarding/presentation/views/onboarding_view.dart';
import 'package:fruits_hub/feartures/products/presentation/views/products_view.dart';
import 'package:fruits_hub/feartures/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings setting) {
  switch (setting.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => SplashView());
    case OnboardingView.routeName:
      return MaterialPageRoute(builder: (context) => OnboardingView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => LoginView());
    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => SignUpView());
    case MainView.routeName:
      return MaterialPageRoute(builder: (context) => MainView());
    case ProductsView.routeName:
      return MaterialPageRoute(builder: (context) => ProductsView());
    case CartView.routeName:
      return MaterialPageRoute(builder: (context) => CartView());
    case CheckoutView.routeName:
      return MaterialPageRoute(
        builder: (context) =>
            CheckoutView(cartEntity: setting.arguments as CartEntity),
      );
    // case BestSellingView.routeName:
    //   return MaterialPageRoute(builder: (context) => BestSellingView());
    default:
      return MaterialPageRoute(builder: (context) => Scaffold());
  }
}
