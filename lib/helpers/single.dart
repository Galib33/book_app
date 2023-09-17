import 'package:get_it/get_it.dart';

import '../services/book_hive_service.dart';

final single = GetIt.instance;

void setup() {
  single.registerLazySingleton(() => BookHiveService());
}
