import 'package:book_app/services/book_hive_service.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../constants/app_paddings.dart';
import '../../../helpers/single.dart';
import '../../../models/book_model.dart';
import 'grid_item.dart';

class GridViewWidget extends StatelessWidget {
  final bool isFavorite;
  const GridViewWidget({
    super.key,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    BookHiveService bookHiveService = single.get<BookHiveService>();
    List<BookModel> visibleList = [];
    return ValueListenableBuilder(
        valueListenable: bookHiveService.listenableBuilder,
        builder: (context, Box<BookModel> box, _) {
          visibleList = box.values.toList();
          if (isFavorite) {
            visibleList = box.values
                .where((element) => element.isFavorite == true)
                .toList();
          }

          return GridView.builder(
            padding: AppPaddings.v8H14,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.82,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            itemBuilder: (context, index) {
              return GridItem(
                index: index,
                bookModel: visibleList[index],
              );
            },
            itemCount: visibleList.length,
          );
        });
  }
}
