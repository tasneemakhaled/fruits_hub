import 'package:flutter/material.dart';
import 'package:fruits_hub/feartures/home/presentation/views/home_view.dart';
import 'package:fruits_hub/feartures/products/presentation/views/products_view.dart';

class GetCurrentView extends StatelessWidget {
  GetCurrentView({super.key, required this.selectedIndex});
  final int selectedIndex;
  List<Widget> views = [HomeView(), ProductsView()];
  @override
  Widget build(BuildContext context) {
    return views[selectedIndex];
  }
}
