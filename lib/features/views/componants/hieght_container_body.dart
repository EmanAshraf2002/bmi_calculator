import 'package:flutter/material.dart';

class HeightContainerBody extends StatefulWidget{
  HeightContainerBody({super.key});

  @override
  State<HeightContainerBody> createState() => _HeightContainerBodyState();
}

class _HeightContainerBodyState extends State<HeightContainerBody> {
  double hight = 80.0;

  @override
  Widget build(BuildContext context) {
    return Column(
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
              '${hight.round()}',
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
            value: hight,
            max: 220,
            min: 80,
            onChanged: (value) {
              setState(() {
                hight = value;
              });
            },
          ),
        ),
        const SizedBox(height:10,),
      ],
    );
  }
}