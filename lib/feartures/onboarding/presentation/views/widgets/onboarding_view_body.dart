import 'package:flutter/material.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/services/shared_prefrences_single_ton.dart';
import 'package:fruits_hub/feartures/auth/presentation/views/login_view.dart';
import 'package:fruits_hub/feartures/onboarding/presentation/views/widgets/custom_dots_indicator.dart';
import 'package:fruits_hub/feartures/onboarding/presentation/views/widgets/custom_onboarding_button.dart';
import 'package:fruits_hub/feartures/onboarding/presentation/views/widgets/custom_onboaring_page_view.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late PageController pageController;
  var currnentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currnentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: CustomOnboaringPageView(pageController: pageController),
        ),
        CustomDotsIndicator(currentPage: currnentPage),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: currnentPage == 1,
            child: CustomOnboardingButton(
              text: 'ابدأ الان',
              onPressed: () {
                SharedPrefrencesSingleTon.setBool(kIsOnboardingViewSeen, true);
                Navigator.pushReplacementNamed(context, LoginView.routeName);
              },
            ),
          ),
        ),
      ],
    );
  }
}
