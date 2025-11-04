import 'package:flutter/material.dart';

class ColorBackgroundPages extends StatelessWidget {
  const ColorBackgroundPages({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [Color(0xff594A75), Color(0xFF211E3D)],
          radius: .9,
          center: AlignmentGeometry.center,
        ),
      ),
      child: SafeArea(child: child),
    );
  }
}
