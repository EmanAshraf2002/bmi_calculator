import 'package:bmi_calculator/core/utilis/colors.dart';
import 'package:bmi_calculator/core/utilis/font_styles.dart';
import 'package:bmi_calculator/features/data_manager/bmi_cubit.dart';
import 'package:bmi_calculator/features/views/bmi_result.dart';
import 'package:bmi_calculator/features/views/componants/custom_container.dart';
import 'package:bmi_calculator/features/views/componants/gender_container.dart';
import 'package:bmi_calculator/features/views/componants/weight_age_Row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BmiScreenBody extends StatelessWidget {
  const BmiScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BmiCubit,BmiState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Padding(
            padding:const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
            child: Column(
              children: [
                const SizedBox(height: 18,),
                Text(
                    'gender',
                    style: Styles.textStyle22.copyWith(fontWeight:FontWeight.w600,)
                ),
                const SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GenderContainer(
                      gender:'Male',
                      icon:Icons.male,
                      conColor:context.read<BmiCubit>().maleColor ,
                      onTap: (){
                        context.read<BmiCubit>().updateMaleColor();
                      },
                    ),
                    GenderContainer(
                        gender:'Female',
                        icon: Icons.female,
                       conColor:context.read<BmiCubit>().femaleColor,
                        onTap: (){
                          context.read<BmiCubit>().updateFemaleColor();
                        },

                    ),
                  ],
                ),
                const SizedBox(height:30,),
                CustomContainer(
                  conheight: 130,
                  conwidth:MediaQuery.of(context).size.width*0.9,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height:10,),
                      const Text(
                        'Height',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '${context.read<BmiCubit>().height.round()}',
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            'cm',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Slider(
                          activeColor: Colors.white,
                          inactiveColor: Colors.grey,
                          thumbColor: Colors.white,
                          value:context.read<BmiCubit>().height,
                          max: 220,
                          min: 80,
                          onChanged: (value) {
                            context.read<BmiCubit>().sliderHeight(newValue:value);
                          },
                        ),
                      ),
                      const SizedBox(height:10,),
                    ],
                  ),
                ),
                const SizedBox(height:30,),
                const WeightAndAgeRow(),
                const SizedBox(height: 10,),
                ElevatedButton(onPressed:(){
                  context.read<BmiCubit>().calculateBMIValue();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>const BmiResult()
                    ),
                  );
                },style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(AppColors.primary)
                ),
                  child:const Text('Calculate',style: Styles.textStyle20,),
                )
          ],
        ),
      ),
    );
  },
    );
  }
}