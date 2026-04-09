import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/constants/app_images.dart';

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({super.key, required this.isChecked, required this.onChanged});
final bool isChecked;
final ValueChanged<bool>onChanged;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
     onChanged(!isChecked);
      },
      child: AnimatedContainer(
         width: 24,
         height: 24,
        duration: Duration(microseconds: 400),
        decoration: 
        ShapeDecoration(
          color:isChecked? AppColors.darkPrimaryColor:Colors.white,
          shape: RoundedRectangleBorder(
           side: BorderSide(color:!isChecked? Color(0xffCCCCCC):Colors.transparent, width: 1.5),
          borderRadius: BorderRadius.circular(8))),
          child: isChecked?Padding(
            padding: const EdgeInsets.all(4),
            child: SvgPicture.asset(Assets.assetsImagesCheck),
          ):SizedBox(),
          ),
    );
  }
}