import 'package:flutter/material.dart';

import '../../constants/app_paddings.dart';
import '../../helpers/single.dart';
import '../../services/book_hive_service.dart';
import 'widgets/functional_row.dart';
import 'widgets/grid_view_widget.dart';
import 'widgets/tab_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    BookHiveService bookHiveService = single.get<BookHiveService>();
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: AppPaddings.all14,
              child: const FunctionalRow(),
            ),
            const GridViewWidget(isFavorite: false),
            //! DefaultTabController(
            //   length: 3,
            //   child: Expanded(
            //     child: Column(
            //       children: const [
            //         TabWidget(),
            //         Expanded(
            //           child: TabBarView(children: [
            //             GridViewWidget(
            //               isFavorite: false,
            //             ),
            //             GridViewWidget(
            //               isFavorite: true,
            //             ),
            //             GridViewWidget(
            //               isFavorite: false,
            //             )//!isRemoved isAll kimi ishleyir
            //           ]),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),







            // Expanded(
            //   child: ValueListenableBuilder(
            //       valueListenable: bookHiveService.listenableBuilder,
            //       builder: (context, Box<BookModel> box, _) {
            //         return GridView.builder(
            //           padding: AppPaddings.v8H14,
            //           scrollDirection: Axis.vertical,
            //           shrinkWrap: true,
            //           gridDelegate:
            //               const SliverGridDelegateWithFixedCrossAxisCount(
            //                   crossAxisCount: 2,
            //                   childAspectRatio: 0.82,
            //                   crossAxisSpacing: 10,
            //                   mainAxisSpacing: 10),
            //           itemBuilder: (context, index) {
            //             return GridItem(
            //               index: index,
            //               bookModel: box.getAt(index)!,
            //             );
            //           },
            //           itemCount: box.values.length,
            //         );
            //       }),
            // ),
          ],
        ),
      ),
    );
  }
}
