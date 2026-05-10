import 'package:flutter/material.dart';
import 'package:fruits_hub/feartures/home/presentation/views/home_view.dart';
import 'package:fruits_hub/feartures/products/presentation/views/products_view.dart';

class GetCurrentView extends StatelessWidget {
  const GetCurrentView({super.key, required this.selectedIndex});
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    List<Widget> views = [HomeView(), ProductsView()];
    return IndexedStack(index: selectedIndex, children: views);
  }
}
