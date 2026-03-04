import 'package:flutter/material.dart';
import 'package:fruits_hub/feartures/onboarding/presentation/views/widgets/custom_dots_indicator.dart';
import 'package:fruits_hub/feartures/onboarding/presentation/views/widgets/custom_onboarding_button.dart';
import 'package:fruits_hub/feartures/onboarding/presentation/views/widgets/custom_onboaring_page_view.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: CustomOnboaringPageView()),
        CustomDotsIndicator(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 12),
          child: CustomOnboardingButton(),
        ),
       
      ],
    );
  }
}