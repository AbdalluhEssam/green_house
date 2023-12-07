
import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:green_house/view/resources/string_manager.dart';

import '../bottomBar/useraccount.dart';

ValidInput(String val, int min ,int max,String? type){

  if (type == "username"){
    if(!GetUtils.isUsername(val)){
      return StringConstants.notvalid1;
    }
  } if (type == "email"){
    if(!GetUtils.isEmail(val)){
      return StringConstants.notvalid2;
    }
  }

  if(val.length>max){
    return StringConstants.max ;
  }
  if(val.isEmpty){
    return  StringConstants.empty;
  }
  if(val.length< min){
    return StringConstants.min;
  }
 // else {print("incorrect validate") ;//Get.to(UserAccount())}

}


