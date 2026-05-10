import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/cubits/cubit/products_cubit.dart';
import 'package:fruits_hub/feartures/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:fruits_hub/feartures/home/presentation/views/widgets/best_selling_header.dart';
import 'package:fruits_hub/core/widgets/search_text_field.dart';
import 'package:fruits_hub/feartures/home/presentation/views/widgets/featured_list_view.dart';
import 'package:fruits_hub/feartures/home/presentation/views/widgets/products_sliver_grid_bloc_builder.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    super.initState();
    context.read<ProductsCubit>().getBestSellingProducts();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  CustomHomeAppBar(),
                  SizedBox(height: 16),
                  SearchTextField(),
                  SizedBox(height: 16),
                  FeaturedListView(),
                  SizedBox(height: 12),
                  // BestSellingHeader(),
                  SizedBox(height: 8),
                  // FruitItem(),
                ],
              ),
            ),
            ProductsSliverGridBlocBuilder(),
          ],
        ),
      ),
    );
  }
}
