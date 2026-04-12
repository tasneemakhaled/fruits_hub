import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/feartures/auth/presentation/views/widgets/custom_checkout.dart';

class TermsAndConditionsWidget extends StatefulWidget {
  const TermsAndConditionsWidget({super.key, required this.onChanged,});
final ValueChanged<bool> onChanged;
  @override
  State<TermsAndConditionsWidget> createState() => _TermsAndConditionsWidgetState();
}

class _TermsAndConditionsWidgetState extends State<TermsAndConditionsWidget> {
 bool isTermsAccepted=false;

  @override
  Widget build(BuildContext context) {
    return  Row(
          
            children: [
              CustomCheckbox(
                onChanged: (value){
           isTermsAccepted=value;
           widget.onChanged(value);
           setState(() {
             
           });
                },
                isChecked: isTermsAccepted,),
              SizedBox(width: 10,),
        // Transform.scale(
        //   scale: 1.3,
        //   child: Checkbox(
        //     value: _isChecked,
        //     onChanged: (val) => setState(() => _isChecked = val ?? false),
        //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        //     side: BorderSide(color: Color(0xffCCCCCC), width: 1.5),
        //   ),
        // ),
        Expanded(
          child:RichText(
            
            text: TextSpan(
              children:[
           TextSpan(
            text:'من خلال إنشاء حساب، فإنك توافق على ',
            style: TextStyles.semiBold13.copyWith(color: Color(0xff949D9E),),),
             TextSpan(
              text:'الشروط والأحكام الخاصة بنا',
                style: TextStyles.semiBold13.copyWith(color: AppColors.lightPrimaryColor),)   
              
              
              
              ] 
            )
          )
        ),
            ],
          );
  }
}