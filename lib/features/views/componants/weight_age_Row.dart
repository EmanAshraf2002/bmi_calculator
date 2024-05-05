import 'package:bmi_calculator/core/utilis/font_styles.dart';
import 'package:bmi_calculator/features/views/componants/custom_container.dart';
import 'package:flutter/material.dart';

class WeightAndAgeRow extends StatefulWidget {
   const WeightAndAgeRow({super.key});

  @override
  State<WeightAndAgeRow> createState() => _WeightAndAgeRowState();
}

class _WeightAndAgeRowState extends State<WeightAndAgeRow> {
  int age =18;
  int wight=65;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomContainer(conheight: 130,
          conwidth: MediaQuery
              .of(context)
              .size
              .width * 0.4,
          child: Column(
            children: [
              const SizedBox(height: 10,),
              Text("Age", style:
              Styles.textStyle22.copyWith(fontWeight: FontWeight.bold),),
              const SizedBox(height: 10,),
              Text('$age', style: Styles.textStyle20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {
                    setState(() {
                      age--;
                    });
                  },
                      icon: const Icon(Icons.remove_circle_outline, size: 30,)),
                  IconButton(onPressed: () {
                    setState(() {
                      age++;
                    });
                  },
                      icon: const Icon(Icons.add_circle_outline, size: 30,)),
                ],
              ),
            ],
          ),
        ),
        CustomContainer(conheight: 130,
          conwidth: MediaQuery
              .of(context)
              .size
              .width * 0.4,
          child: Column(
            children: [
              const SizedBox(height: 10,),
              Text("Wight", style:
              Styles.textStyle22.copyWith(fontWeight: FontWeight.bold),),
              const SizedBox(height: 10,),
              Text('$wight', style: Styles.textStyle20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {
                    setState(() {
                      wight--;
                    });
                  },
                      icon: const Icon(Icons.remove_circle_outline, size: 30,)),
                  IconButton(onPressed: () {
                    setState(() {
                      wight++;
                    });
                  },
                      icon: const Icon(Icons.add_circle_outline, size: 30,)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}