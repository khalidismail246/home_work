import 'package:app/widgets/blueContainer.dart';
import 'package:app/widgets/cyanContainer.dart';
import 'package:app/widgets/greenAndorangeContainer.dart';
import 'package:app/widgets/greyContainer.dart';
import 'package:app/widgets/lastContainer.dart';
import 'package:app/widgets/purpleContainer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Bluecontainer(),
              Greycontainer(),
              Divider(color: Color(0xffDCDCDC), thickness: 1),
              GreenAndOrangeContainer(),
              Purplecontainer(),
              Cyancontainer(),
              Lastcontainer(),
            ],
          ),
        ),
      ),
    );
  }
}
