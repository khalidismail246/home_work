import 'package:flutter/material.dart';

abstract class AppDecoration {
  static BoxDecoration selectAnswerBackgroundDecoration = BoxDecoration(
    gradient: secondaryGradinet(),
    borderRadius: BorderRadius.circular(12),
  );

  static LinearGradient secondaryGradinet() => LinearGradient(
    begin: AlignmentGeometry.bottomLeft,
    end: AlignmentGeometry.topRight,
    colors: [Color(0xffB8B2FF), Color(0xffC6C2F8)],
  );
  static BoxDecoration mainBackgroundDecoration = BoxDecoration(
    gradient: mainBackgroundGradient(),
  );

  static LinearGradient mainBackgroundGradient() {
    return LinearGradient(
      begin: AlignmentGeometry.topLeft,
      end: AlignmentGeometry.bottomLeft,
      colors: [Color(0xff060B26), Color(0xff1A1F37)],
    );
  }
}
