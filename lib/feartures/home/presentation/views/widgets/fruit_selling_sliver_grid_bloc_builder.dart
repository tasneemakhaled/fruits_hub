import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/cubits/cubit/products_cubit.dart';
import 'package:fruits_hub/core/helper_functions/build_error_bar.dart';
import 'package:fruits_hub/feartures/home/presentation/views/widgets/custom_dummy_product.dart';
import 'package:fruits_hub/feartures/home/presentation/views/widgets/fruit_selling_sliver_grid.dart';
import 'package:skeletonizer/skeletonizer.dart';

class FruitSellingSliverGridBlocBuilder extends StatelessWidget {
  const FruitSellingSliverGridBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsSuccess) {
          return FruitSellingSliverGrid(products: state.products);
        } else if (state is ProductsFailure) {
          // buildErrorBar(context, state.errorMessage);
          return SliverToBoxAdapter(child: const SizedBox.shrink());
        } else {
          return Skeletonizer.sliver(
            child: FruitSellingSliverGrid(products: dummyProducts),
          );
        }
      },
    );
  }
}
