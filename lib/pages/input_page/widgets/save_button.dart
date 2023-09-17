import 'package:book_app/models/book_model.dart';
import 'package:book_app/services/book_hive_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_round_borders.dart';
import '../../../constants/app_texts.dart';
import '../../../helpers/navigation.dart';
import '../../../helpers/single.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    // Box<BookModel> box = Hive.box<BookModel>("book");
    BookHiveService bookHiveService = single.get<BookHiveService>();
    return ElevatedButton.icon(
        onPressed: () async {
          bookHiveService.addPaper();
          Navigation.goPop(context);
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.blueColor,
            fixedSize: Size(150.w, 50.h),
            shape: AppRoundBorders.submitButtonRARadius16),
        icon: const Icon(Icons.save_alt_outlined),
        label: Text(AppTexts.buttonText));
  }
}
