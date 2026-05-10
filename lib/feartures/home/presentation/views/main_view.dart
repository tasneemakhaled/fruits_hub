import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper_functions/get_current_view.dart';
import 'package:fruits_hub/feartures/home/presentation/views/widgets/custom_bottom_nav_bar.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});
  static const routeName = 'home_view';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: selectedIndex,
        onItemSelected: (value) {
          selectedIndex = value;
          setState(() {});
        },
      ),
      body: GetCurrentView(selectedIndex: selectedIndex),
    );
  }
}
