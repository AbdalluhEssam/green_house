
import 'package:get/get.dart';
import 'package:green_house/component/services/myservice.dart';

abstract class Onboarding_controller extends GetxController{

}

class Onboarding_controllerImp extends Onboarding_controller{

  MyServices myServices = Get.find();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}