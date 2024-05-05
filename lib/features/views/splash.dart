import 'package:bmi_calculator/core/utilis/colors.dart';
import 'package:bmi_calculator/core/utilis/font_styles.dart';
import 'package:bmi_calculator/core/utilis/image_assets.dart';
import 'package:bmi_calculator/features/views/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen  extends StatelessWidget{
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 200,
              width: 350,
              decoration: BoxDecoration(
               image: DecorationImage(
                   image:AssetImage(ImageConstants.splash),

               )
              ),
            ),
          ),
          //const SizedBox(height: 8,),
          TextButton(
              onPressed:(){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context){
                      return HomeScreen();
                    }));
              },
              child:Text("Let's Start" ,
                style: Styles.textStyle22.copyWith(
                    color: AppColors.primary,
                    fontSize: 22,
                    fontStyle: FontStyle.italic
                )
                )),
        ],
      ),

    );
  }



}