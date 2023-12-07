import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../resources/value_manager.dart';

import 'color_manager.dart';
import 'font_manager.dart';

class CustomFormField extends StatelessWidget {
   CustomFormField({Key? key,required this.hint,
    required this.mycontroller,required this.valid, this.preIcon, this.suIcon, required this.obsecure, }) : super(key: key);
  final String hint;
  final String? Function (String?)? valid;
  final TextEditingController mycontroller;
  final bool obsecure;
  final preIcon;
  final suIcon;

  @override
  Widget build(BuildContext context) {

    return  SafeArea(

          child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSize.s30,vertical: AppSize.s10),
                child: TextFormField(
                  style:TextStyle(color: ColorManager.white,fontSize: AppSize.s16) ,
                  validator: valid,
                  controller: mycontroller,
                  obscureText: obsecure,
                  cursorColor: ColorManager.white,
                  decoration:InputDecoration(
                    fillColor: ColorManager.deepGreen,
                    filled:true ,

                    prefixIcon: preIcon,
                    suffixIcon: suIcon,
                    border: InputBorder.none,
                    hintText: hint,
                  ) ,





        ),

          ));




  }
}
