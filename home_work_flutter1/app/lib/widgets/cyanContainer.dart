import 'package:flutter/material.dart';

class Cyancontainer extends StatelessWidget {
  const Cyancontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          Expanded(child: Container(height: 75, color: Color(0xffAFDCD9))),
          SizedBox(width: 20),
          Expanded(child: Container(height: 75, color: Color(0xff7EC8C1))),
        ],
      ),
    );
  }
}
