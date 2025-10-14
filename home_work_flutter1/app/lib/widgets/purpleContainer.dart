import 'package:flutter/material.dart';

class Purplecontainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        color: Color(0xffF2E4F5),
        height: 100,
        child: Row(
          children: [
            Container(color: Color(0xffE1BEE8), width: 100),
            SizedBox(width: 10),
            Container(
              color: Color(0xffE1BEE8),
              width: 100,
              child: Column(
                children: [
                  Expanded(child: Container(color: Color(0xffCD92D7))),
                  SizedBox(height: 10),
                  Expanded(child: Container(color: Color(0xffCD92D7))),
                ],
              ),
            ),
            SizedBox(width: 10),
            Container(color: Color(0xffE1BEE8), width: 100),
          ],
        ),
      ),
    );
  }
}
