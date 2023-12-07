
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_house/component/constants/handling_data.dart';
import 'package:green_house/component/constants/statusRequest.dart';
import 'package:green_house/component/services/myservice.dart';
import 'package:green_house/data/remote/auth/Login.dart';
import 'package:green_house/view/resources/route_manager.dart';

import '../view/resources/color_manager.dart';
import '../view/resources/font_manager.dart';
import '../view/resources/string_manager.dart';

abstract class LoginController extends GetxController{

  login();
  gotoSignUp();
  gotoForgetPassword();
}
class LoginControllerImp extends LoginController{
  GlobalKey<FormState> formState = GlobalKey();

  late  TextEditingController email;
  late TextEditingController password ;

  late StatusRequest? statusRequest;
  LoginData loginData = LoginData(Get.find());
  MyServices myServices = Get.find();
List data=[];
  @override
  login() async{
    if (formState.currentState?.validate() == true) {
      statusRequest = StatusRequest.loading;

      var response = await loginData.postData(email.text, password.text, );
      print(" ================= controller $response");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          Get.offNamed(Routes.home) ;
         //data.addAll(response['data']);
          myServices.sharedPreferences.setString("user_id",response["data"]["user_id"] );
          myServices.sharedPreferences.setString("user_name",response["data"]["user_name"] );

        } else {
          // alert dialog
          Get.defaultDialog(
            backgroundColor: ColorManager.white,
            buttonColor: ColorManager.white,
            title: StringConstants.warningExist,
            middleText: StringConstants.wrongLogin,
            middleTextStyle: TextStyle(color: ColorManager.primary,
              fontSize: FontSizeManager.s18,
              fontWeight: FontWeightMnager.regular,),
            titleStyle: TextStyle(color: ColorManager.primary,
              fontSize: FontSizeManager.s20,
              fontWeight: FontWeightMnager.medium,),
          );
          statusRequest = StatusRequest.failure;
        }
      }
    }else{}

    update();
  }

  @override
  void onInit(){
    /*
    FirebaseMessaging.instance.getToken().then((value) => (){
      print(value);
      String? token = value;
    });

     */
    email= TextEditingController();
    password = TextEditingController();
    login();
    super.onInit();
  }
  @override
  void dispose(){
    email.dispose();
    password.dispose();
    login();
    super.dispose();
  }

  @override
  gotoForgetPassword() {
    Get.toNamed(Routes.forgotpasswordRoute);
  }

  @override
  gotoSignUp() {
   Get.toNamed(Routes.registerRoute);
  }


}