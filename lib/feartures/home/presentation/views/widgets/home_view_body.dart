import 'package:flutter/material.dart';
import 'package:fruits_hub/feartures/home/presentation/views/widgets/best_selling_header.dart';
import 'package:fruits_hub/feartures/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:fruits_hub/core/widgets/search_text_field.dart';
import 'package:fruits_hub/feartures/home/presentation/views/widgets/featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

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
                  BestSellingHeader(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
