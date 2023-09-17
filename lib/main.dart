import 'package:book_app/helpers/single.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'core/init.dart';

void main() async {
  await Init.initialFirst();
  setup();
  runApp(const MyApp());
}
