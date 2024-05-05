import 'package:bmi_calculator/core/utilis/colors.dart';
import 'package:bmi_calculator/core/utilis/font_styles.dart';
import 'package:bmi_calculator/features/data_manager/bmi_cubit.dart';
import 'package:bmi_calculator/features/views/componants/result_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/percent_indicator.dart';

class BmiResult extends StatelessWidget{
  const BmiResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor:AppColors.primary ,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30,right: 16,left: 16),
          child: Column(
            children: [
              Center(
                child: CircularPercentIndicator(
                   radius:60,
                   lineWidth:12,
                   progressColor: AppColors.primary,
                   animation: true,
                   animationDuration:1200,
                   percent: context.read<BmiCubit>().bmi /100,
                   circularStrokeCap: CircularStrokeCap.round,
                   center:Text("${context.read<BmiCubit>().bmi}%",style:
                     Styles.textStyle30,)  ,
                ),
              ),
              const  SizedBox(height: 20,),
              const  ResultDetails()

            ],
          ),
        ),
      ),
    );
  }


}