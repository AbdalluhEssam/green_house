import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ConfigrationController extends GetxController {
  config();
}
  class ConfigrationControllerImp extends ConfigrationController{

  late TextEditingController systemName;
  late TextEditingController wifiName;
  late TextEditingController wifiPassword ;



  config(){}


    @override
  void onInit() {
    // TODO: implement onInit
      systemName=TextEditingController();
      wifiName=TextEditingController();
      wifiPassword=TextEditingController();
      config();
    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    systemName.dispose();
    wifiName.dispose();
    wifiPassword.dispose();
    config();
    super.dispose();
  }


  }

