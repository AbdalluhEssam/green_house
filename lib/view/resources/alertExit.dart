import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_house/view/resources/color_manager.dart';
import 'package:green_house/view/resources/string_manager.dart';

alertExistApp(){
  return Get.defaultDialog(
    title: StringConstants.warningExist,
    middleText: StringConstants.middleExist,
    backgroundColor: ColorManager.lightgreen,
    actions: [
      ElevatedButton(onPressed: (){
        exit(0);
      }, child: Text(StringConstants.confirm)),
      ElevatedButton(onPressed: (){
        Get.back();
      }, child: Text(StringConstants.cancel)),

    ]

  );
  //return Future.value(true);
}

// WillPopScope