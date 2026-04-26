import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/utils/constants/app_images.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 214,
      width: 168,
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(color: Color(0xfff3f5f7)),
      child: Stack(
        children: [
          Positioned(child: Icon(Icons.favorite_border)),
          Positioned.fill(
            child: Column(
              children: [
                SizedBox(height: 20),
                Image.asset(AppImages.assetsImagesWatermelon),
                ListTile(
                  trailing: CircleAvatar(
                    backgroundColor: AppColors.darkPrimaryColor,
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                  title: Text('بطيخ', style: TextStyles.semiBold13),
                  subtitle: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '20جنية',
                          style: TextStyles.bold13.copyWith(
                            color: Color(0xfff3bf60),
                          ),
                        ),
                        TextSpan(
                          text: '/الكيلو',
                          style: TextStyles.bold13.copyWith(
                            color: Color(0xfff5d69c),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
