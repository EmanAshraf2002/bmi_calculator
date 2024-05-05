import 'package:bmi_calculator/core/utilis/colors.dart';
import 'package:bmi_calculator/core/utilis/font_styles.dart';
import 'package:flutter/material.dart';

class GenderContainer extends StatelessWidget{
 final Color conColor;
 VoidCallback onTap;
 final String? gender;
 final IconData? icon;

  GenderContainer({super.key,required this.onTap,
    this.gender,this.icon, required this.conColor
  });

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height:170 ,
        width: width* 0.4,
        decoration: BoxDecoration(
          color: conColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [BoxShadow(color: Colors.white24,offset:Offset(5,7))]

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Icon(icon ,size: 90,),
            Text(
              gender!,
              style: Styles.textStyle20.copyWith(color:AppColors.background)
            ),
          ],
        ),
      ),
    );
  }

}