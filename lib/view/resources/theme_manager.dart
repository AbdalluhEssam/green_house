import 'package:flutter/material.dart';

import 'color_manager.dart';
import 'font_manager.dart';
import 'style_manager.dart';
import 'value_manager.dart';

ThemeData getApplicationTheme(){
  return ThemeData(
    // mainColor
   // primaryColor: ColorManager.deepGreen,
   // disabledColor: ColorManager.deepGreen,
    //splashColor: ColorManager.lightPrimary,  // ripple effect color

    // cardview theme
    cardTheme: CardTheme(
        color: ColorManager.lightgreen,
        shadowColor: ColorManager.Gray,
        elevation: AppSize.s0
    ),

    // appbar theme
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.white,
        elevation: AppSize.s0,
        titleTextStyle: getregularstyle(color: ColorManager.deepGreen,fontsize: FontSizeManager.s16, fontFamily: FontConstant.fontfamily)
    ),

    // button theme
  buttonTheme: ButtonThemeData(
  shape: const StadiumBorder(),
  disabledColor: ColorManager.deepGreen,
  buttonColor:  ColorManager.white,
  //splashColor:  ColorManager.lightPrimary,
  ),

    // elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
        style:ElevatedButton.styleFrom(
          backgroundColor: ColorManager.deepGreen,
          padding: EdgeInsets.symmetric(horizontal:50,vertical: AppPadding.p10),
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.s30)) ,
            textStyle:TextStyle(color: ColorManager.white,fontSize:FontSizeManager.s22,fontFamily: FontConstant.fontfamily)
        )
    ),


    // text theme
    textTheme: TextTheme(
        headlineLarge:getregularstyle(color: ColorManager.deepYellow, fontFamily: FontConstant.fontfamily),
      bodyLarge:getregularstyle(color: ColorManager.deepGreen, fontFamily: FontConstant.fontfamily,) ,
        displayLarge:getregularstyle(color: ColorManager.deepGreen, fontFamily: FontConstant.fontfamily),
        bodySmall: getregularstyle(color: ColorManager.deepYellow, fontFamily: FontConstant.fontfamily,)
    ),


    // input decoration theme
     inputDecorationTheme: InputDecorationTheme(
          // content padding
     contentPadding: EdgeInsetsDirectional.all(AppPadding.p10),
      //hint style
     hintStyle: getregularstyle(color: ColorManager.white,fontsize: FontSizeManager.s16,
       fontFamily: FontConstant.fontfamily,
     ),
      //label style
      labelStyle: getregularstyle(color: ColorManager.deepGreen,fontsize: FontSizeManager.s14,
          fontFamily:  FontConstant.fontfamily),

       // error style
       errorStyle: getregularstyle(color: ColorManager.error, fontFamily: FontConstant.fontfamily ),


      //enabled border style
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.deepYellow,width: AppSize.s1_5),
          borderRadius: BorderRadius.circular(AppSize.s15)),

      //focused border
      focusedBorder: OutlineInputBorder(
          borderSide:BorderSide(color: ColorManager.deepYellow,width: AppSize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(FontSizeManager.s20))),

      //error border style


      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.transparent,width: AppSize.s1_5),
          borderRadius: BorderRadius.circular(AppSize.s1_5)),


      // focusederror border style
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s20)),
          borderSide: BorderSide(width: AppSize.s1_5,color: ColorManager.error)
      )


  )
  );
}