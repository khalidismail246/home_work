import 'package:app/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class BackActionButton extends StatelessWidget {
  const BackActionButton({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pageController.previousPage(
          duration: Duration(milliseconds: 600),
          curve: Curves.linear,
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: BoxBorder.all(color: Color(0xff8E84FF)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            spacing: 8,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.arrow_back_ios, color: Colors.white, size: 19),
              Text("Back", style: AppTextStyle.medium16()),
            ],
          ),
        ),
      ),
    );
  }
}
