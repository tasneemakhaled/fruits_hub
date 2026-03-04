import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, required this.backgroundImage, required this.onBoardingImage, required this.subTitle, required this.title});
final String backgroundImage,onBoardingImage;
final String subTitle;
final Widget title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
     SizedBox(
      height: MediaQuery.of(context).size.height*.6,
      width: double.infinity,
       child: Stack(
         children: [
          
           Positioned.fill(child: SvgPicture.asset(backgroundImage,color: Color(0xffFDF4E2),fit: BoxFit.fill,))   ,
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text('تخط',style: TextStyle(decoration: TextDecoration.underline),),
            ),
           Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SvgPicture.asset(onBoardingImage)),
            
         ],
       ),
     ),
     SizedBox(height: 32,)
     ,title,
     SizedBox(height: 12,),
     Padding(
       padding: const EdgeInsets.symmetric(horizontal: 16.0),
       child: Text(subTitle,textAlign: TextAlign.center,),
     ),

      ],
    );
  }
}