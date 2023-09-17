import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppPaddings {
  AppPaddings._();

  static EdgeInsets all15 = const EdgeInsets.all(15).w;
  static EdgeInsets all14 = const EdgeInsets.all(14).w;
  static EdgeInsets v8H14 = const EdgeInsets.symmetric(vertical:8,horizontal: 14).w;

  static EdgeInsets all8 = const EdgeInsets.all(8).w;
  static const EdgeInsets zero = EdgeInsets.zero;
  static EdgeInsets onlyLRT338 =
      const EdgeInsets.only(left: 3.0, right: 3.0, top: 8.0).w;

  static EdgeInsets onlyLT87 = const EdgeInsets.only(left: 8.0, top: 7).w;
  static EdgeInsets onlyT8 = const EdgeInsets.only(top: 8).w;
}
