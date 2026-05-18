import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/cubits/cubit/products_cubit.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_app_bar.dart';
import 'package:fruits_hub/core/widgets/search_text_field.dart';
import 'package:fruits_hub/feartures/home/presentation/views/widgets/products_sliver_grid_bloc_builder.dart';
import 'package:fruits_hub/feartures/products/presentation/views/widgets/products_header.dart';

class ProductsViewBody extends StatefulWidget {
  const ProductsViewBody({super.key});

  @override
  State<ProductsViewBody> createState() => _ProductsViewBodyState();
}

class _ProductsViewBodyState extends State<ProductsViewBody> {
  @override
  void initState() {
    super.initState();
    context.read<ProductsCubit>().getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                CustomAppBar(title: Text('المنتجات', style: AppStyles.bold19)),
                SizedBox(height: 16),
                SearchTextField(),
                SizedBox(height: 16),
                ProductsHeader(
                  productsLength: context.read<ProductsCubit>().productsLength,
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
        ),
        ProductsSliverGridBlocBuilder(),
      ],
    );
  }
}
