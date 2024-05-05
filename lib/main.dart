import 'package:bmi_calculator/features/data_manager/bmi_cubit.dart';
import 'package:bmi_calculator/features/views/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const BMIApp());
}

class BMIApp extends StatelessWidget {
  const BMIApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BmiCubit(),
      child:const  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),

      ),
    );
  }
}