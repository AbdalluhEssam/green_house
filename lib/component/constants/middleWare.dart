import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_house/view/resources/route_manager.dart';

import '../services/myservice.dart';

class MiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;
  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getInt("step") == 1) {
      return const RouteSettings(name: Routes.loginRoute);
    }else{

    }
  }
}
