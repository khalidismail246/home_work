import 'package:flutter/material.dart';

abstract class AppTextStyle {
  // Regular Weight - 24px (H1)
  static TextStyle regular24({Color? color}) => TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    fontFamily: 'Gilroy',
    color: color ?? Colors.white,
  );

  // Medium Weight - 24px (H1)
  static TextStyle medium24({Color? color}) => TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    fontFamily: 'Gilroy',
    color: color ?? Colors.white,
  );

  // Semibold Weight - 24px (H1)
  static TextStyle semibold24({Color? color}) => TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    fontFamily: 'Gilroy',
    color: color ?? Colors.white,
  );

  // Bold Weight - 24px (H1)
  static TextStyle bold24({Color? color}) => TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    fontFamily: 'Gilroy',
    color: color ?? Colors.white,
  );

  // Regular Weight - 18px (H2)
  static TextStyle regular18({Color? color}) => TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    fontFamily: 'Gilroy',
    color: color ?? Colors.white,
  );

  // Medium Weight - 18px (H2)
  static TextStyle medium18({Color? color}) => TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    fontFamily: 'Gilroy',
    color: color ?? Colors.white,
  );

  // Semibold Weight - 18px (H2)
  static TextStyle semibold18({Color? color}) => TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    fontFamily: 'Gilroy',
    color: color ?? Colors.white,
  );

  // Bold Weight - 18px (H2)
  static TextStyle bold18({Color? color}) => TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    fontFamily: 'Gilroy',
    color: color ?? Colors.white,
  );

  // Regular Weight - 16px
  static TextStyle regular16({Color? color}) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: 'Gilroy',
    color: color ?? Colors.white,
  );

  // Medium Weight - 16px
  static TextStyle medium16({Color? color}) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: 'Gilroy',
    color: color ?? Colors.white,
  );

  // Semibold Weight - 16px
  static TextStyle semibold16({Color? color}) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: 'Gilroy',
    color: color ?? Colors.white,
  );

  // Bold Weight - 16px
  static TextStyle bold16({Color? color}) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    fontFamily: 'Gilroy',
    color: color ?? Colors.white,
  );

  // Regular Weight - 12px
  static TextStyle regular12({Color? color}) => TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: 'Gilroy',
    color: color ?? Colors.white,
  );

  // Medium Weight - 12px
  static TextStyle medium12({Color? color}) => TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    fontFamily: 'Gilroy',
    color: color ?? Colors.white,
  );

  // Semibold Weight - 12px
  static TextStyle semibold12({Color? color}) => TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    fontFamily: 'Gilroy',
    color: color ?? Colors.white,
  );

  // Bold Weight - 12px
  static TextStyle bold12({Color? color}) => TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    fontFamily: 'Gilroy',
    color: color ?? Colors.white,
  );
}
