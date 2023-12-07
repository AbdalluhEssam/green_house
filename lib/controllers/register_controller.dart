
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_house/component/constants/handling_data.dart';
import 'package:green_house/component/constants/statusRequest.dart';
import 'package:green_house/data/remote/auth/signUp.dart';
import 'package:green_house/view/resources/color_manager.dart';
import 'package:green_house/view/resources/font_manager.dart';
import 'package:green_house/view/resources/route_manager.dart';
import 'package:green_house/view/resources/string_manager.dart';

import '../component/services/myservice.dart';


abstract class RegisterController extends GetxController{

  register();
}
class RegisterControllerImp extends RegisterController{
  GlobalKey<FormState> formstate = GlobalKey();

  late StatusRequest? statusRequest ;
  MyServices myServices = Get.find();

  SignUpData signUpData = SignUpData(Get.find());

  List data=  [];
  late  TextEditingController username;
  late  TextEditingController email;
  late  TextEditingController password;
  late  TextEditingController phone ;
  late  TextEditingController gender;

  @override

  register()async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;

      var response = await signUpData.postData(
          username.text, email.text, password.text, phone.text, gender.text);
      print(" ================= controller $response");
      statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        //myServices.sharedPreferences.setString("user_id", response["data"]["user_id"]);

        Get.offNamed(Routes.UserAccount);
         data.addAll(response['data']);
      } else {
        // alert dialog
         Get.defaultDialog(
          backgroundColor: ColorManager.white,
          buttonColor: ColorManager.white,
          title: StringConstants.warningExist,
          middleText: StringConstants.middleText,
          middleTextStyle: TextStyle(color: ColorManager.lightgreen,
            fontSize: FontSizeManager.s18,
            fontWeight: FontWeightMnager.regular,),
          titleStyle: TextStyle(color: ColorManager.lightgreen,
            fontSize: FontSizeManager.s20,
            fontWeight: FontWeightMnager.regular,),
        );
        statusRequest = StatusRequest.failure;
      }
    }
    }else{}

    update();

  }
    @override
    void onInit() {
      username = TextEditingController();
      password = TextEditingController();
      email = TextEditingController();
      phone = TextEditingController();
      gender = TextEditingController();
      register();
      super.onInit();
    }
    @override
    void dispose() {
      username.dispose();
      password.dispose();
      email.dispose();
      phone.dispose();
      gender.dispose();
      register();
      super.dispose();

  }}