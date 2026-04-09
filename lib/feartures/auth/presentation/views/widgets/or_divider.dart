import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
          children: [
            Expanded(child: Divider(color: Color(0xffE6E9EA))),
            Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text('أو', style: TextStyle(color: Color(0xff0C0D0D))),
            ),
            
            Expanded(child: Divider(color: Color(0xffE6E9EA))),
          ],
        );
  }
}