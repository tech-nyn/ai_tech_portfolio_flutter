

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'custom_text.dart';

class CustomSvgIconButton extends StatelessWidget{
  final String label;
  final String iconPath;
  final double? iconSize;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? radius;

  const CustomSvgIconButton({
    super.key,
    required this.label,
    required this.iconPath,
    this.iconSize = 30.0,
    this.horizontalPadding = 16.0,
    this.verticalPadding = 4.0,
    this.radius = 20.0
  });


  @override
  Widget build(BuildContext context) => DecoratedBox(
    decoration: BoxDecoration(
      color: Colors.purple,
      borderRadius: BorderRadius.circular(radius!)
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding!, vertical: verticalPadding!),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomText(text: label, isBold: true,),
          SvgPicture.asset(iconPath, width: iconSize,)
        ],
      ),
    ),
  );
}