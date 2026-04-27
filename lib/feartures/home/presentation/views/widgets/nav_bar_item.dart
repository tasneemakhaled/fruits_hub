import 'package:flutter/material.dart';
import 'package:fruits_hub/feartures/home/domain/entites/bottom_navigation_bar_entity.dart';
import 'package:fruits_hub/feartures/home/presentation/views/widgets/active_item_nav_bar.dart';
import 'package:fruits_hub/feartures/home/presentation/views/widgets/inactive_item_nav_bar.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({
    super.key,
    required this.isSelected,
    required this.bottomNavigationBarEntity,
  });
  final bool isSelected;
  final BottomNavigationBarEntity bottomNavigationBarEntity;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveItemNavBar(
            activeIcon: bottomNavigationBarEntity.activeIcon,
            label: bottomNavigationBarEntity.label,
          )
        : InactiveItemNavBar(
            inactiveIcon: bottomNavigationBarEntity.inActiveIcon,
          );
  }
}
