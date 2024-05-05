import 'package:bmi_calculator/core/utilis/colors.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget{
  CustomContainer({super.key, required this.conheight,
    required this.conwidth,this.child});

   final double conheight;
   final double conwidth;
   Widget? child;
  @override
  Widget build(BuildContext context) {
   return Container(
     height: conheight,
     width: conwidth,
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(16),
       color: AppColors.primary,
     ),
     child:child ,
   );
  }


}