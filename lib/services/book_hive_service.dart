import 'package:book_app/models/book_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:image_picker/image_picker.dart';

class BookHiveService {
  Box<BookModel> bookBox = Hive.box<BookModel>("book");

  final TextEditingController titleController = TextEditingController();
  final TextEditingController subtitleController = TextEditingController();
  final ImagePicker imagePicker = ImagePicker();
  XFile? pickedImage;
  ValueNotifier<String?> valueNotifier = ValueNotifier(null);

  void addPaper() async {
    // bookBox.add(BookModel(title, subTitle, imageUri, dateTime));
    if (pickedImage != null) {
      await bookBox.add(BookModel(titleController.text, subtitleController.text,
          pickedImage!.path, DateTime.now()));

      // print(bookBox.getAt(1)?.subTitle);
    }
    pickedImage = null;
    clearProcess();
  }

  void updateModel(int index, BookModel bookModel) async {
    await bookBox.putAt(index, bookModel);
  }

  void clearProcess() {
    titleController.clear();
    subtitleController.clear();
  }

  void takePicture(ImageSource source) async {
    pickedImage = await imagePicker.pickImage(source: source);
    valueNotifier.value = pickedImage?.path;
  }

  ValueListenable<Box<BookModel>> get listenableBuilder => bookBox.listenable();
}
