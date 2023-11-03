import 'package:book_app/services/book_hive_service.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_paddings.dart';
import '../../constants/app_sized_boxes.dart';
import '../../constants/app_texts.dart';
import '../../helpers/single.dart';
import 'widgets/input_widget.dart';
import 'widgets/pick_image_container.dart';
import 'widgets/save_button.dart';

class InputPage extends StatelessWidget {
  const InputPage({super.key});

  @override
  Widget build(BuildContext context) {
    BookHiveService bookHiveService = single.get<BookHiveService>();
    return Scaffold(
      backgroundColor: AppColors.greyColor,
      appBar: AppBar(
        backgroundColor: AppColors.greyColor,
        elevation: 0, //!
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            primary: true,
            padding: AppPaddings.all15,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const PickImageContainer(),
                AppSizedBox.sizedBoxH30,
                InputWidget(
                  labelText: AppTexts.titleFieldHint,
                  maxLength: 25,
                  controller: bookHiveService.titleController,
                ),
                AppSizedBox.sizedBoxH20,
                InputWidget(
                  labelText: AppTexts.aboutFieldHint,
                  maxLines: 4,
                  controller: bookHiveService.subtitleController,
                ),
                AppSizedBox.sizedBoxH30,
                const Visibility(
                  visible: true,
                  child: SaveButton(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
