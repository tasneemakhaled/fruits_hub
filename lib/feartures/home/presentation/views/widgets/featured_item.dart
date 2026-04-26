import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/utils/constants/app_images.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg;

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: SizedBox(
        width: double.infinity,
        child: AspectRatio(
          aspectRatio: 342 / 158,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                bottom: 0,
                right: MediaQuery.of(context).size.width / 3.5,
                child: SvgPicture.asset(
                  AppImages.assetsImagesOnboarding2,
                  fit: BoxFit.fill,
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: svg.Svg(AppImages.assetsImagesShape),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 33.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 25),
                      Text(
                        'عروص العيد',
                        style: TextStyles.regular13.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'خصم 25%',
                        style: TextStyles.bold19.copyWith(color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(8),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'تسوق الأن',
                          style: TextStyles.bold13.copyWith(
                            color: AppColors.darkPrimaryColor,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
