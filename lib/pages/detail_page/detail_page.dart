import 'package:book_app/services/book_hive_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_paddings.dart';
import '../../helpers/navigation.dart';
import '../../helpers/single.dart';
import '../../themes/app_box_decorations.dart';
import 'widgets/description_texts_column.dart';
import 'widgets/detail_image.dart';
import 'widgets/favorite_icon_container.dart';

class DetailPage extends StatelessWidget {
  final int itemIndex;
  const DetailPage({super.key, required this.itemIndex});
  @override
  Widget build(BuildContext context) {
    BookHiveService bookHiveService = single.get<BookHiveService>();
    return Scaffold(
      backgroundColor: AppColors.greyColor,
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: AppColors.greyColor,
        elevation: 0,
        actions: [
          //! IconButton(
          //     onPressed: () {
          //       bookHiveService.bookBox.getAt(itemIndex)!.isRemoved = true;
          //       bookHiveService.updateModel(
          //           itemIndex, bookHiveService.bookBox.getAt(itemIndex)!);
          //       Navigation.goPop(context);
          //     },
          //     icon: Icon(Icons.delete)),
        ],
      ),
      body: Stack(
        // clipBehavior: Clip.none,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Expanded(child: Align(alignment: Alignment.bottomCenter,child: Image.asset("assets/images/gtr.jpg",fit: BoxFit.cover,width: MediaQuery.of(context).size.width,))),
          SingleChildScrollView(
            child: Column(
              children: [
                DetailImage(
                  index: itemIndex,
                ),
                Container(
                  // alignment: Alignment.center,
                  padding: AppPaddings.all8.copyWith(top: 15, right: 15),
                  decoration: AppBoxDecorations.greyCircular5,
                  width: MediaQuery.of(context).size.width,
                  child: DescriptionTextsColumn(
                    index: itemIndex,
                  ),
                ),
              ],
            ),
          ),

          Positioned(
              right: 5.w,
              top: (1.sh / 2) - 30.h,
              child: FavoriteIconContainer(
                index: itemIndex,
              )),
        ],
      ),
    );
  }
}
