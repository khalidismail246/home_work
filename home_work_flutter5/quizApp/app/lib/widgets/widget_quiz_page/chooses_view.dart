import 'package:flutter/material.dart';

class ChoosesView extends StatelessWidget {
  const ChoosesView({
    super.key,
    required this.choose,
    required this.isSelected,
    required this.ontap,
    required this.oneChoose,
  });
  final String choose;
  final bool isSelected;
  final VoidCallback ontap;
  final bool oneChoose;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              begin: AlignmentGeometry.bottomLeft,
              end: AlignmentGeometry.topRight,
              colors: isSelected
                  ? [Color(0xFFB8B2FF), const Color(0xFFC6C2F7)]
                  : [Colors.white, Colors.white],
            ),
          ),
          child: Row(
            spacing: 16,
            children: [
              CircleAvatar(
                backgroundColor: Color(0xff2B0063),
                radius: 11,
                child: isSelected
                    ? CircleAvatar(
                        radius: 9.5,
                        backgroundColor: isSelected && oneChoose
                            ? Color(0xff2B0063)
                            : isSelected || oneChoose
                            ? Color(0xffB8B2FF)
                            : Colors.white,
                        child: isSelected && oneChoose
                            ? Image.asset(
                                "assets/images/check_white.png",
                                width: 10,
                              )
                            : isSelected || oneChoose
                            ? Image.asset(
                                "assets/images/check_color.png",
                                width: 10,
                              )
                            : null,
                      )
                    : CircleAvatar(backgroundColor: Colors.white, radius: 9.5),
              ),
              Text(
                choose,
                style: TextStyle(
                  color: Color(0xff2B0063),
                  fontFamily: "Gilroy",
                  fontWeight: FontWeight.w500,
                  fontSize: isSelected ? 18 : 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
