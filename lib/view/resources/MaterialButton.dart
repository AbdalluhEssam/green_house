import 'package:flutter/material.dart';
import 'package:green_house/view/resources/string_manager.dart';
import 'package:green_house/view/resources/value_manager.dart';

import 'color_manager.dart';
import 'font_manager.dart';

class Material_Button extends StatelessWidget {
  const Material_Button({super.key,required this.text,required this.button_text,required this.onPressed});
  final String text;
  final String button_text;

 final void Function()? onPressed ;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(text ,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: ColorManager.deepGreen, fontWeight: FontWeightMnager.regular,
              fontSize: FontSizeManager.s16,fontFamily: FontConstant.fontfamily),),

        MaterialButton(
          onPressed: (){},
          shape: RoundedRectangleBorder(),
          color: ColorManager.deepYellow,
          elevation: AppSize.s4,
          child: Text(
            button_text,style: TextStyle(
              color: ColorManager.black, fontWeight: FontWeightMnager.regular,
              fontSize: FontSizeManager.s16,fontFamily: FontConstant.fontfamily),),
        )
      ],);
  }
}
