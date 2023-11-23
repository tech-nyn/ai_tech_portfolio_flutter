

import 'package:flutter/material.dart';

class CustomColoredBox extends StatelessWidget{
  final double? width;
  final double? height;
  final double? radius;
  final Widget child;

  const CustomColoredBox({
    super.key,
    this.width,
    this.height,
    this.radius = 8.0,
    required this.child,
  });


  @override
  Widget build(BuildContext context) => SizedBox(
    width: width,
    height: height,
    child: DecoratedBox(
      decoration: BoxDecoration(
        color:const  Color(0xFF191C27),
        borderRadius: BorderRadius.circular(radius!)
      ),
      child: child,
    )
  );
}