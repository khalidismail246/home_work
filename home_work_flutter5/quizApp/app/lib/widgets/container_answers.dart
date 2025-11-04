import 'package:flutter/material.dart';

class ContainerAnswers extends StatefulWidget {
  const ContainerAnswers({
    super.key,
    required this.answertext,
    required this.isSelected,
    required this.onSelected,
  });

  final String answertext;
  final bool isSelected;
  final Function(bool) onSelected;

  @override
  State<ContainerAnswers> createState() => _ContainerAnswersState();
}

class _ContainerAnswersState extends State<ContainerAnswers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Transform.scale(
            scale: 1.5,
            child: Checkbox(
              activeColor: Color(0xff2B0066),
              side: BorderSide(width: 1),
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 0),
                borderRadius: BorderRadiusGeometry.circular(9),
              ),
              value: widget.isSelected,
              onChanged: (val) {
                widget.onSelected(val ?? false);
              },
            ),
          ),
          Text(
            widget.answertext,
            style: TextStyle(
              color: Color(0xFF371B5E),
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
