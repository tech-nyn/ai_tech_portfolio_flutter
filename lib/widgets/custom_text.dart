

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget{
    final String text;
    final bool? isDark;
    final bool? isBold;
    final double? size;
    final Color? color;

  const CustomText({
    super.key,
    required this.text,
    this.isDark,
    this.isBold,
    this.size = 12.0,
    this.color,
  });

  static const Color darkTextColor = Color(0xFF757070);
  static const Color brightTextColor = Color(0xFFc6c6c6);

  @override
  Widget build(BuildContext context) => Text(
    text,
    // maxLines: 100,
    textAlign: TextAlign.left,
    style: TextStyle(
      color: color ?? (isDark != null && isDark != false ? darkTextColor : brightTextColor),
      fontSize: size,
      fontWeight: isBold != null && isBold != false ? FontWeight.bold : FontWeight.normal,
      overflow: TextOverflow.ellipsis,
    )
  );
}