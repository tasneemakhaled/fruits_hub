import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/fruit_item.dart';

class FruitSellingGridView extends StatelessWidget {
  const FruitSellingGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: FruitItem(),
          );
        },
      ),
    );
  }
}
