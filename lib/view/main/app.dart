import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_house/component/services/myservice.dart';
import '../../component/binding/initial_bnding.dart';
import '../resources/route_manager.dart';
import '../resources/theme_manager.dart';


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  MyServices myServices= Get.find();
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(

      debugShowCheckedModeBanner: false,

      theme: getApplicationTheme(),
      getPages: route,
      initialBinding: initialBinding(),

    );
  }
}
