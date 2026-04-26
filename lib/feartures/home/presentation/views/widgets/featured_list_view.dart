// featured_list_view.dart
import 'package:flutter/material.dart';
import 'package:fruits_hub/feartures/home/presentation/views/widgets/featured_item.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return SizedBox(
            width: 300, // 👈 Constrain each item's width explicitly
            child: Padding(
              padding: const EdgeInsets.only(right: 12),
              child: FeaturedItem(),
            ),
          );
        },
      ),
    );
  }
}
