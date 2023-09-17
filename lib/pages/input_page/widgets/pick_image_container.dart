import 'dart:io';

import 'package:book_app/services/book_hive_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../../helpers/single.dart';
import 'pick_up_button.dart';

class PickImageContainer extends StatefulWidget {
  const PickImageContainer({super.key});

  @override
  State<PickImageContainer> createState() => _PickImageContainerState();
}

class _PickImageContainerState extends State<PickImageContainer> {
  // ValueNotifier<String?> valueNotifier = ValueNotifier(null);
  BookHiveService bookHiveService = single.get<BookHiveService>();
  File? imagee;

  @override
  void dispose() {
    bookHiveService.valueNotifier.value = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: bookHiveService.valueNotifier,
        builder: (context, String? valueImage, _) {
          if (valueImage != null) {
            imagee = File(valueImage);
          }
          return Container(
            alignment: Alignment.center,
            width: 270.w,
            height: 270.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.darkGreyColor,
              image: imagee == null
                  ? null
                  : DecorationImage(
                      image: FileImage(imagee!), fit: BoxFit.cover),
            ),
            child: imagee == null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      PickUpButton(
                        iconData: Icons.camera_alt_outlined,
                        isCamera: true,
                        // valueNotifier: valueNotifier,
                      ),
                      PickUpButton(
                        iconData: Icons.image,
                        isCamera: false,
                        // valueNotifier: valueNotifier,
                      )
                    ],
                  )
                : const SizedBox.shrink(),
          );
        });
  }
}
