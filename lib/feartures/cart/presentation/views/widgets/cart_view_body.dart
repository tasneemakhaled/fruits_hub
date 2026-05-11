import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/feartures/cart/presentation/views/widgets/cart_header.dart';
import 'package:fruits_hub/feartures/cart/presentation/views/widgets/cart_products_sliver_list.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: Column(children: [CartHeader()])),
        CartProductsSliverList(),
        // SliverToBoxAdapter(child: CustomButton(text: 'الدفع  120جنيه')),
      ],
    );
  }
}
