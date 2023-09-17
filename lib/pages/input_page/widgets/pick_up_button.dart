import 'package:book_app/constants/app_colors.dart';
import 'package:book_app/services/book_hive_service.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../helpers/single.dart';

class PickUpButton extends StatelessWidget {
  final IconData iconData;
  final bool isCamera;
  // final ValueNotifier<String?> valueNotifier;
  const PickUpButton({
    super.key,
    required this.iconData,
    required this.isCamera,
  });

  @override
  Widget build(BuildContext context) {
    final ImagePicker imagePicker = ImagePicker();
    BookHiveService bookHiveService = single.get<BookHiveService>();

    XFile? pickedImage;
    // ValueNotifier<String?> valueNotifier = ValueNotifier(null);

    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              const CircleBorder(side: BorderSide(color: AppColors.whiteColor)),
          padding: const EdgeInsets.all(20),
          backgroundColor: AppColors.greyColor,
        ),
        onPressed: () async {
          if (isCamera) {
            final status = await Permission.camera.status;
            if (status.isGranted) {
              bookHiveService.takePicture(ImageSource.camera);
              // pickedImage =
              //     await imagePicker.pickImage(source: ImageSource.camera);
              //! valueNotifier.value = pickedImage?.path;
            } else if (status.isDenied) {
              if (status.isPermanentlyDenied) {
                // ScaffoldMessenger.of(context).showSnackBar(
                //     const SnackBar(content: Text('Permamnently denied')));
                // openAppSettings();
              } else {
                await Permission.camera.request().then((value) async {
                  if (value.isGranted) {
                    bookHiveService.takePicture(ImageSource.camera);
                    // pickedImage =
                    //     await imagePicker.pickImage(source: ImageSource.camera);
                    //! valueNotifier.value = pickedImage?.path;
                  }
                });
              }
            }
          } else {
            bookHiveService.takePicture(ImageSource.gallery);
            // pickedImage =
            //     await imagePicker.pickImage(source: ImageSource.gallery);
            //! valueNotifier.value = pickedImage?.path;

            // final status = await Permission.photos.status;
            // if (status.isGranted) {
            //   //!to do
            // } else if (status.isDenied) {
            //   if (status.isPermanentlyDenied) {
            //     ScaffoldMessenger.of(context).showSnackBar(
            //         const SnackBar(content: Text('Permamnently denied')));
            //   } else {
            //     await Permission.photos.request();
            //   }
            // }
          }
        },
        child: Icon(iconData));
  }
}
