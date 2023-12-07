
import 'package:flutter/material.dart';

import 'color_manager.dart';
import 'font_manager.dart';
import 'value_manager.dart';

class textfield extends StatelessWidget {
  final String text;
  final  Icon  icon;
  final  Function()? ontap;
  textfield({ required this.text, this.ontap, required this.icon,});
  @override
  Widget build(BuildContext context) {
    return InkWell(

        onTap:ontap ,
        child:Container(

          height:AppSize.s50 ,
          margin: EdgeInsets.symmetric(horizontal: AppPadding.p30),
          decoration:BoxDecoration(
            color: ColorManager.deepGreen,
            borderRadius: BorderRadius.circular(AppSize.s30),

          ) ,

          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: AppPadding.p12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                icon,
                Text(text,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: ColorManager.white,
                    fontSize: FontSizeManager.s20,
                    fontFamily: FontConstant.fontfamily,),),

              ],
            ),
          ),
        )




    );
  }
}
