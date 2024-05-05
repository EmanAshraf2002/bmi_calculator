import 'package:bmi_calculator/core/utilis/colors.dart';
import 'package:bmi_calculator/core/utilis/font_styles.dart';
import 'package:bmi_calculator/features/views/componants/bmi_body.dart';
import 'package:bmi_calculator/features/views/componants/custom_container.dart';
import 'package:bmi_calculator/features/views/componants/gender_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMale = false;
  int age = 15;
  int wight = 50;
  double hight = 80.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title:Text("BMI Calculator",
          style: Styles.textStyle20.copyWith(
            color: AppColors.background
          ),),
      ),
      body:const BmiScreenBody(),

    );



  }
}