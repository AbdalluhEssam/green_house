import 'package:flutter/material.dart';
import 'package:green_house/view/resources/color_manager.dart';

class Camera extends StatefulWidget {
  const Camera({Key? key}) : super(key: key);

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: ColorManager.primary,
    );
  }
}
