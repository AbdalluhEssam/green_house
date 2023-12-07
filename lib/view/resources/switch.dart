import 'package:flutter/material.dart';

import 'color_manager.dart';

class Switch_view extends StatefulWidget {
   Switch_view({super.key});


  @override
  State<Switch_view> createState() => _Switch_viewState();
}

class _Switch_viewState extends State<Switch_view> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return  Switch(
      inactiveTrackColor: ColorManager.lightGray3,

      activeColor: ColorManager.white,
        activeTrackColor: ColorManager.lightgreen,
        value:isSwitched ,
        onChanged: (value){
      setState(() {
        isSwitched = value;
      });

    });
  }
}
