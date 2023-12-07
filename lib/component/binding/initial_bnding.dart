
import 'package:get/get.dart';
import 'package:green_house/component/constants/Crud.dart';


class initialBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(Crud());
  }
}