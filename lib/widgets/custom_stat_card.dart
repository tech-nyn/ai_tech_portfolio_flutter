

import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomStatCard extends StatelessWidget{
  final String statNumber;
  final String statDescription;
  final Color? color;
  final Color? textColor;
  final double? radius;

  const CustomStatCard({
    super.key,
    required this.statNumber,
    required this.statDescription,
    this.color,
    this.textColor,
    this.radius = 8.0,
  });


  @override
  Widget build(BuildContext context) => SizedBox(
    // width: x,
    // height: x,
    child: DecoratedBox(
      decoration: BoxDecoration(
        color: color ?? Colors.blueAccent,
        borderRadius: BorderRadius.circular(radius!)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomText(
            text: statNumber,
            color: textColor,
            size: 24.0,
            isBold: true,
          ),
          CustomText(
            text: statDescription,
            color: textColor
          ),
        ]
      )
    )
  );
}