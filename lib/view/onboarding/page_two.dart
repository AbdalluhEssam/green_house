
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../login/login_view.dart';
import '../resources/FrostedGlassBox.dart';
import '../resources/asset_manager.dart';
import '../resources/button.dart';
import '../resources/color_manager.dart';
import '../resources/font_manager.dart';
import '../resources/string_manager.dart';
import '../resources/value_manager.dart';

class pagetwo extends StatelessWidget {  @override
Widget build(BuildContext context) {
  return SafeArea(
    child: ListView(
      children: [
        Stack(
            children: [Container(
              height: AppSize.s300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppSize.s90),
                      bottomRight: Radius.circular(AppSize.s90))),
              child: Image(image: AssetImage(ImageAssets.onboardingimage),fit: BoxFit.fill,width: double.infinity,),
            ),

              Container(
                margin: EdgeInsets.only(top:250,left: 170, ),
                child: FrostedGlassBox(
                    Width:90.0 , Height:90.0 ,
                    Child: Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                          image:DecorationImage(image: AssetImage(ImageAssets.logoimage),)
                      ),
                    )),
              ),

            ]),

        SizedBox(height: AppSize.s20,),
        Center(
          child: Text(StringConstants.textonboarding21,textAlign: TextAlign.center,
              style: TextStyle(color: ColorManager.deepGreen,fontSize: AppSize.s40,
                fontFamily: FontConstant.fontfamily,) ),
        ),
        SizedBox(height:AppSize.s10 ,),
        Text(StringConstants.textonboarding12,textAlign: TextAlign.center,
            style:TextStyle(color: ColorManager.deepYellow,fontSize: AppSize.s16,fontWeight: FontWeightMnager.medium
            ) ),


        SizedBox(height:AppSize.s50 ,),

        Button(text: StringConstants.button2,onpressed: (){
          Get.to(LoginView());},
        ),

      ],),
  );
}
}
