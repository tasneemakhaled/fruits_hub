import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/utils/constants/app_images.dart';
import 'package:fruits_hub/feartures/BestSellingFruits/presentation/views/widgets/fruits_selling_grid_view.dart';
import 'package:fruits_hub/feartures/home/presentation/views/widgets/fruit_selling_sliver_view.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});
  static const routeName = 'best selling view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SvgPicture.asset(AppImages.assetsImagesNotificationIcon),
          ),
        ],
        title: Text('الأكثر مبيعا', style: TextStyles.bold19),
      ),
      body: FruitsSellingGridView(),
    );
  }
}
