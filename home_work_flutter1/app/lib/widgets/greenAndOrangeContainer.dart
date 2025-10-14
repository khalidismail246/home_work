import 'package:flutter/material.dart';

class GreenAndOrangeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 120,
              color: Color(0xffDFF6E1),
              child: Column(
                children: [
                  Expanded(child: Container(color: Color(0xffA4D5A6))),
                  SizedBox(height: 10),
                  Expanded(child: Container(color: Color(0xffA4D5A6))),
                ],
              ),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Container(
              height: 120,
              color: Color(0xffFBEFDC),
              child: Row(
                children: [
                  Expanded(child: Container(color: Color(0xffFECB7F))),
                  SizedBox(width: 10),
                  Expanded(child: Container(color: Color(0xffFECB7F))),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
