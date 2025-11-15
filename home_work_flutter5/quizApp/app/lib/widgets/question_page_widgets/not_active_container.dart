import 'package:app/theme/app_colors.dart';
import 'package:app/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class NotActiveContainer extends StatelessWidget {
  const NotActiveContainer({super.key, required this.choice});
  final String choice;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          spacing: 16,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 10,
              backgroundColor: AppColors.primary,
              child: CircleAvatar(radius: 8.5, backgroundColor: Colors.white),
            ),
            Text(
              choice,
              style: AppTextStyle.medium16(color: AppColors.primary),
            ),
          ],
        ),
      ),
    );
  }
}
