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
    return Stack(
      children: [
        CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: Column(children: [CartHeader()])),
            SliverToBoxAdapter(
              child: Divider(height: 16, color: Color(0xfff1f1f5)),
            ),
            CartProductsSliverList(),
            SliverToBoxAdapter(
              child: Divider(height: 16, color: Color(0xfff1f1f5)),
            ),
          ],
        ),
        Positioned(
          left: 16,
          right: 16,
          bottom: MediaQuery.sizeOf(context).height * .07,
          child: CustomButton(text: 'الدفع  120جنيه', onPressed: () {}),
        ),
      ],
    );
  }
}
