import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/cubits/cubit/products_cubit.dart';
import 'package:fruits_hub/core/helper_functions/build_error_bar.dart';
import 'package:fruits_hub/feartures/home/presentation/views/widgets/custom_dummy_product.dart';
import 'package:fruits_hub/feartures/home/presentation/views/widgets/products_sliver_grid.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProductsSliverGridBlocBuilder extends StatelessWidget {
  const ProductsSliverGridBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsSuccess) {
          return ProductsSliverGrid(products: state.products);
        } else if (state is ProductsFailure) {
          // buildErrorBar(context, state.errorMessage);
          // // return SliverToBoxAdapter(child: const SizedBox.shrink());
          return SliverToBoxAdapter(
            child: Center(child: Text('Failed to load products')),
          );
        } else {
          return Skeletonizer.sliver(
            child: ProductsSliverGrid(products: dummyProducts),
          );
        }
      },
    );
  }
}
