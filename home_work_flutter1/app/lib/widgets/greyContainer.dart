import 'package:flutter/material.dart';

class Greycontainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          Container(color: Color(0xffDCDCDC), height: 35, width: 35),
          SizedBox(width: 10),
          Expanded(child: Container(color: Color(0xffDCDCDC), height: 25)),
        ],
      ),
    );
  }
}
