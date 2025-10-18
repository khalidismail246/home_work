import 'package:app/widgets/item_Quik_Stats.dart';
import 'package:flutter/material.dart';

class QuickStats extends StatelessWidget {
  const QuickStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Quick Stats",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Row(
          spacing: 16,
          children: [
            ItemQuikStats(
              icon: Icons.people,
              title: '1,234',
              subTitle: 'Users',
              color: Color(0xff683BAF),
            ),
            ItemQuikStats(
              icon: Icons.star,
              title: '4.8',
              subTitle: 'Rating',
              color: Color(0xffFB9500),
            ),
            ItemQuikStats(
              icon: Icons.trending_up,
              title: '98%',
              subTitle: 'Success',
              color: Color(0xff2798F4),
            ),
          ],
        ),
      ],
    );
  }
}
