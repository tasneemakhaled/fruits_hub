import 'package:flutter/material.dart';
import 'package:fruits_hub/feartures/onboarding/presentation/views/widgets/custom_onboaring_page_view.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: CustomOnboaringPageView()),
      ],
    );
  }
}