import 'package:book_app/models/book_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Init {
  Init._();

  static Future<void> initialFirst() async {
    await Hive.initFlutter();
    Hive.registerAdapter(BookModelAdapter());
    await Hive.openBox<BookModel>("book");
  }
}
