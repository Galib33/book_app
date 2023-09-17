import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppBorders {
  AppBorders._();

  static Border get genderContainerBorderStyle =>
      Border.all(width: 2, color: Colors.green);

  static OutlineInputBorder get outInputBorderR12W2Blue => OutlineInputBorder(
        borderRadius: BorderRadius.circular(17),
        borderSide: const BorderSide(color: AppColors.whiteColor, width: 2),
      );
      static OutlineInputBorder get outInputBorderR12W2Red => OutlineInputBorder(
        borderRadius: BorderRadius.circular(17),
        borderSide: const BorderSide(color: AppColors.redColor, width: 2),
      );

  //!parametr gondereceyikse get qoymaq olmaz
  //*static  Border border2(){return Border.all(color: Colors.black);}

  //!parametr gondermeyeceyikse, ashagidaki kimi get-le yazmaq olar
  //* static Border get border2 {
  //*   return Border.all(color: Colors.black);
  //* }

  //! getle yazdigimiz metodu ashagidaki kimi qisalda da bilerik
  //*static Border get border2 => Border.all(color: Colors.black);

  //!bezen class-a chixartmalarda chashsan ki hansini const-la hansini getle yazmaliyam,birinci const-la olani yoxlaya bilersen onsuz xeta verse bileceksen ki getle yazilmalidi(tebii ki parametr almirsa)
}
