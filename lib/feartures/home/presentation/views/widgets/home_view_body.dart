import 'package:flutter/material.dart';
import 'package:fruits_hub/feartures/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:fruits_hub/feartures/home/presentation/views/widgets/search_text_field.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CustomHomeAppBar()),
            SliverToBoxAdapter(child: SearchTextField()),
          ],
        ),
      ),
    );
  }
}
