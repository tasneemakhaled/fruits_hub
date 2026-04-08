import 'package:flutter/material.dart';


class CustomLoginMethodButton extends StatelessWidget {
  const CustomLoginMethodButton({super.key, required this.leading, required this.title});
final Widget leading;
final Widget title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(12),
        side: BorderSide(
        color: Color(0xffE6E9EA))),
      leading:leading,
      title: title,
    );
  }
}