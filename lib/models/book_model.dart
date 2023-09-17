// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:hive_flutter/hive_flutter.dart';

part 'book_model.g.dart';

@HiveField(1)
class BookModel {
   @HiveField(0)
  final String title;

  @HiveField(1)
  final String subTitle;

  @HiveField(2)
  bool? isFavorite=false;

  @HiveField(3)
  final String imageUri;

  @HiveField(4)
  final DateTime dateTime;

  @HiveField(5)
  bool? isRemoved=false;



  BookModel(this.title, this.subTitle, this.imageUri, this.dateTime);
 
  
}
