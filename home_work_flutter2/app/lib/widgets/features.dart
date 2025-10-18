import 'package:app/widgets/item_Features.dart';
import 'package:flutter/material.dart';

class Features extends StatelessWidget {
  const Features({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 6,
      children: [
        Text(
          "Features",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        ItemFeatures(
          title: 'Fast Preformance',
          subtitle: 'Lightning fast app performance',
          color: Color(0xff683BAF),
          icon: Icons.speed,
        ),
        ItemFeatures(
          title: "Secure",
          subtitle: "Your data is safe with us",
          color: Color(0xff2798F4),
          icon: Icons.security,
        ),
        ItemFeatures(
          title: "Beautiful UI",
          subtitle: "Modern and clean design",
          color: Color(0xffFB9500),
          icon: Icons.palette,
        ),
      ],
    );
  }
}
