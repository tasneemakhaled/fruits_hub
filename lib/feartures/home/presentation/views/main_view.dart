import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper_functions/get_current_view.dart';
import 'package:fruits_hub/feartures/cart/presentation/view_models/cubit/cart_cubit.dart';
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
    return BlocProvider(
      create: (context) => CartCubit(),
      child: Scaffold(
        // provide cart cubit here
        bottomNavigationBar: CustomBottomNavBar(
          selectedIndex: selectedIndex,
          onItemSelected: (value) {
            selectedIndex = value;
            setState(() {});
          },
        ),
        body: BlocListener<CartCubit, CartState>(
          listener: (context, state) {
            if (state is CartItemAdded) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Product added to cart successfully')),
              );
            }
          },

          child: GetCurrentView(selectedIndex: selectedIndex),
        ),
      ),
    );
  }
}
