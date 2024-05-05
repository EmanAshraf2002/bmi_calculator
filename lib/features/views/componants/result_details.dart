import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bmi_calculator/core/utilis/colors.dart';
import 'package:bmi_calculator/core/utilis/font_styles.dart';
import 'package:bmi_calculator/features/data_manager/bmi_cubit.dart';
import 'package:bmi_calculator/features/views/componants/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultDetails extends StatelessWidget{
  const ResultDetails({super.key});

  @override
  Widget build(BuildContext context) {
   double h=MediaQuery.of(context).size.height;
   double w=MediaQuery.of(context).size.width;
    return Column(
      children: [
        Text("Your BMI Value  is ${context.read<BmiCubit>().bmi} KG/m2",
            style:Styles.textStyle20.copyWith(color:AppColors.primary,
            fontWeight: FontWeight.w700) ),
        const SizedBox(height:12),
        AnimatedTextKit(animatedTexts:[
          TypewriterAnimatedText(
              "Category is ${BlocProvider.of<BmiCubit>(context).determineCategory()}",
              textAlign: TextAlign.center,
              textStyle: Styles.textStyle20.copyWith(color:AppColors.primary,
                  fontWeight: FontWeight.w700),
              speed: const Duration(milliseconds: 100)
          ),
        ],
          totalRepeatCount: 3,
          stopPauseOnTap: true,
          displayFullTextOnTap: true,
        ),
        const SizedBox(height: 16,),
        CustomContainer(
           conheight:h*0.4 ,
           conwidth: w*0.8,
          child: Column(
            children: [
              const SizedBox(height: 30,),
              const Icon(Icons.sports_martial_arts,size: 60,),
              Padding(
                padding: const EdgeInsets.only(right: 12,left: 12,top: 12),
                child: Text("Description: ${context.read<BmiCubit>().showDescription()}",
                  style: Styles.textStyle20,),
              ),
            ],
          ),
        ),
      ],
    );
  }

}