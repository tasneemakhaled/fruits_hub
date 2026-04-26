import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/fruit_item.dart';

class FruitSellingGridView extends StatelessWidget {
  const FruitSellingGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 163 / 214, // width/height
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
      ),
      itemBuilder: (context, index) {
        return FruitItem();
      },
    );
  }
}
