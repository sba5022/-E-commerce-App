import 'package:flutter/material.dart';
class CustomStepper extends StatefulWidget {
  const CustomStepper({super.key});

  @override
  State<CustomStepper> createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  @override
  int numOfItems= 1;
  Widget build(BuildContext context) {
    return Row(
      children: [SizedBox(
        height: 32,
        width: 40,
        child: OutlinedButton(
            onPressed: (){},
            child: Icon(Icons.remove)),
      )
      ],
    );
  }
}
