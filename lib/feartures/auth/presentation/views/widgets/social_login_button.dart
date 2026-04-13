import 'package:flutter/material.dart';

class SocailLoginButton extends StatelessWidget {
  const SocailLoginButton({
    super.key,
    required this.leading,
    required this.title,
    this.onTap,
  });
  final Widget leading;
  final Widget title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        visualDensity: VisualDensity(vertical: VisualDensity.minimumDensity),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
          side: BorderSide(color: Color(0xffE6E9EA)),
        ),
        leading: leading,
        title: title,
      ),
    );
  }
}
