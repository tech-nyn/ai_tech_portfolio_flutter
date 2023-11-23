

import 'package:flutter/material.dart';

class CustomContentBox extends StatelessWidget{
  final Widget? leading;
  final Widget? trailing;
  final Widget? content;
  final double? padding;
  final double? contentGap;

  const CustomContentBox({
    super.key,
    this.leading,
    this.trailing,
    this.content,
    this.padding = 16.0,
    this.contentGap,
  });


  @override
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.all(padding!),
    child: Column(
      // direction: Axis.vertical,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            leading != null ? leading! : const SizedBox.shrink(),
            trailing != null ? trailing! : const SizedBox.shrink(),
          ]
        ),
        SizedBox(
          height: content != null ? (contentGap ?? 24) : 0.0
          // height: contentGap ?? (isDark != null && isDark != false ? darkTextColor : brightTextColor),
        ),
        content != null ? content! : const SizedBox.shrink()
      ]
    ),
  );
}