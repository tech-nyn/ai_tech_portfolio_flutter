

import 'package:flutter/material.dart';

class CustomPortfolioCard extends StatelessWidget{
  final String imagePath;
  final double radius;
  final double? height;
  final bool? isReadMore;

  const CustomPortfolioCard({
    super.key,
    required this.imagePath,
    this.radius = 16.0,
    this.height = 100,
    this.isReadMore = false,
  });


  @override
  Widget build(BuildContext context) => SizedBox(
    // width: width,
    height: height,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: GestureDetector(
        onPanStart: (details) {
          // print(details.)
        },
        child: Stack(
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imagePath)
                )
              ),
              child: const SizedBox.expand(),
            ),
            isReadMore! ? Positioned(
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              left: 0.0,
              child: ColoredBox(
                color: Colors.black.withOpacity(0.7),
                child: const Center(
                  child: Text(
                    "Read More",
                    style: TextStyle(
                      color: Colors.white
                    )
                  )
                )
              )
            ) : const SizedBox.shrink()
          ]
        )
      )
    )
  );
}
