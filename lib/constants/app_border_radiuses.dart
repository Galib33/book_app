import 'package:flutter/material.dart';

class AppBorderRadiuses {
  AppBorderRadiuses._();

  static BorderRadius get c12 => BorderRadius.circular(12);
  static BorderRadius get c5 => BorderRadius.circular(5);
  static BorderRadius get circularLR14 => const BorderRadius.only(
      topRight: Radius.circular(14), topLeft: Radius.circular(14));
}
