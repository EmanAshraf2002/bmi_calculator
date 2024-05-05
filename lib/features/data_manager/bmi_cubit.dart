import 'package:bloc/bloc.dart';
import 'package:bmi_calculator/core/utilis/colors.dart';
import 'package:flutter/material.dart';

part 'bmi_state.dart';

class BmiCubit extends Cubit<BmiState> {
  BmiCubit() : super(BmiInitial());

  String gender="";
  bool isMale =true;
  int age = 15;
  int wight = 50;
  double height = 80.0;
  int bmi=0;
  Color maleColor=Colors.grey;
  Color femaleColor=Colors.grey;

  void updateMaleColor(){
    gender="Male";
    isMale=true;
    maleColor = AppColors.primary;
    femaleColor = Colors.grey;
    emit(BmiMaleColorState());
  }
  void updateFemaleColor(){
    gender="Female";
    isMale=false;
    maleColor = Colors.grey;
    femaleColor =AppColors.primary;
    emit(BmiFemaleColorState());
  }

  void sliderHeight({required double newValue}){
    height=newValue;
    emit(BmiSliderState());

  }

  calculateBMIValue(){
    bmi=(wight  / ((height / 100) * (height  / 100))).round() ;
    emit(BmiCalculateState());
  }

  String determineCategory(){
    if(bmi<18.5){
      return 'UnderWeight';

    }
    else if(bmi>=18.5 && bmi<25){
      return 'Normal Weight';
    }
    else if(bmi>=25 && bmi<30){
      return 'OverWeight';
    }
    else{
      return 'Obese';
    }

  }

  String showDescription() {
    if (bmi < 18.5) {
      return "Underweight,You have a lower body weight than what is considered healthy for their height ";
    }
    else if (bmi >= 18.5 && bmi < 25) {
      return "Normal weight range,Your weight is generally proportional to your height.";
    }
    else if (bmi >= 25 && bmi < 30) {
      return " Overweight category,You have excess body weight that could potentially increase the risk of certain health issues.";
    }
    else {
      return "Obese category,This indicates a significantly higher amount of body weight compared to what is considered healthy, which may increase the risk of various health problems.";
    }
  }


}
