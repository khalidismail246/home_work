import 'package:flutter/material.dart';

class ImageInStartPage extends StatelessWidget {
  const ImageInStartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: AlignmentGeometry.center,
        children: [
          Image.asset(
            "assets/images/GRADINET.png",
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          Image.asset(
            "assets/images/homePage.png",
            fit: BoxFit.contain,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
