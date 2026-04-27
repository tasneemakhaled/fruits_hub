import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InactiveItemNavBar extends StatelessWidget {
  const InactiveItemNavBar({super.key, required this.inactiveIcon});
  final String inactiveIcon;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(inactiveIcon);
  }
}
