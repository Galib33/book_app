import 'package:flutter/material.dart';

class Navigation {
  Navigation._();

  static void goPush(BuildContext context, {required Widget page}) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => page,
        ));
  }

  static void goPop(BuildContext context) {
    Navigator.pop(context);
  }
}
