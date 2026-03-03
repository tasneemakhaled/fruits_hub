import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/constants/app_images.dart';
import 'package:fruits_hub/feartures/onboarding/presentation/views/widgets/page_view_item.dart';

class CustomOnboaringPageView extends StatelessWidget {
  const CustomOnboaringPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem(
          
          backgroundImage: Assets.assetsImagesVector1,
           onBoardingImage: Assets.assetsImagesOnboarding1,
            subTitle: 'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.', 
            title: Row(
              children: [
                Text('مرحبًا بك في'),
                Text('Fruit'),
                Text('HUB'),
              ],
            ))
      ],);
  }
}