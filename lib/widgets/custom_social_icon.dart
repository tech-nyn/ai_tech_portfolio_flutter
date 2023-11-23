

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSocialIcon extends StatelessWidget{
  final String path;
  final double? backgroundSize;
  final double? padding;

  const CustomSocialIcon(
    this.path,{
      super.key,
      this.backgroundSize = 45.0,
      this.padding = 10.0,
    });


  @override
  Widget build(BuildContext  context) => DecoratedBox(
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 15, 15, 5),
      borderRadius: BorderRadius.circular(25.0)
    ),
    child: SizedBox(
      width: backgroundSize!,
      height: backgroundSize!,
      child: Padding(
        padding: EdgeInsets.all(padding!),
        child: Center(
          child: SvgPicture.asset(
            path,
          ),
        ),
      )
    ),
  );
}