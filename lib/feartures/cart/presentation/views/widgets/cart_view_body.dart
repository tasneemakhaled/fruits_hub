import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper_functions/build_error_bar.dart';

import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/feartures/cart/presentation/view_models/cubit/cart_cubit.dart';
import 'package:fruits_hub/feartures/cart/presentation/views/widgets/cart_header.dart';
import 'package:fruits_hub/feartures/cart/presentation/views/widgets/cart_products_sliver_list.dart';
import 'package:fruits_hub/feartures/checkout/presentation/views/checkout_view.dart';

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
              child: context.read<CartCubit>().cartEntity.cartEntites.isNotEmpty
                  ? Divider(height: 16, color: Color(0xfff1f1f5))
                  : SizedBox(), // remove dicider if there is no added cart products
            ),
            CartProductsSliverList(
              cartEntities: context.read<CartCubit>().cartEntity.cartEntites,
            ),
            SliverToBoxAdapter(
              child: context.read<CartCubit>().cartEntity.cartEntites.isNotEmpty
                  ? Divider(height: 16, color: Color(0xfff1f1f5))
                  : SizedBox(), // remove dicider if there is no added cart products
            ),
          ],
        ),
        Positioned(
          left: 16,
          right: 16,
          bottom: MediaQuery.sizeOf(context).height * .06,
          child: BlocBuilder<CartCubit, CartState>(
            builder: (context, state) {
              return CustomButton(
                text:
                    'الدفع ${context.watch<CartCubit>().cartEntity.calculateTotalPrice()} جنيه',

                /// listen =watch not build=read
                /// // to do format to price if 1.0 to 1 if 1.23445 to 1.5 and so on
                onPressed: () {
                  context.read<CartCubit>().cartEntity.cartEntites.isNotEmpty
                      ? Navigator.of(context).pushNamed(
                          CheckoutView.routeName,
                          arguments: context
                              .read<CartCubit>()
                              .cartEntity
                              .cartEntites,
                        )
                      : buildErrorBar(context, 'لا توجد منتجات فالسلة');
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
