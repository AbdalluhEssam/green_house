

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../login/login_view.dart';
import '../resources/FrostedGlassBox.dart';
import '../resources/asset_manager.dart';
import '../resources/button.dart';
import '../resources/color_manager.dart';
import '../resources/font_manager.dart';
import '../resources/string_manager.dart';
import '../resources/value_manager.dart';
import 'onboardingscreen.dart';

class pageone extends StatelessWidget{
  @override
Widget build(BuildContext context) {
  return SafeArea(
      child:ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Stack(
                children: [
                  Container(
                    height: AppSize.s300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(AppSize.s90),
                            bottomRight: Radius.circular(AppSize.s90))),
                    child:Image(image: AssetImage(ImageAssets.onboardingimage),fit: BoxFit.fill,width: double.infinity,)
                  ),

                  Container(
                    margin: EdgeInsets.only(top:250,left: 170, ),
                    child: FrostedGlassBox(
                        Width:90.0 , Height:90.0 ,
                        Child: Image(image: AssetImage(ImageAssets.logoimage),height:50 ,width:50 ,)
                    ),

                  )


                ]),

            SizedBox(height: AppSize.s20,),

            Text(StringConstants.textonboarding11,textAlign: TextAlign.center,
                style:TextStyle(color: ColorManager.deepGreen,fontSize: AppSize.s40,
                  fontFamily: FontConstant.fontfamily,) ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(StringConstants.growup,textAlign: TextAlign.center,
                    style:TextStyle(color: ColorManager.deepGreen,fontSize: AppSize.s40,
                      fontFamily: FontConstant.fontfamily,) ),

                SvgPicture.asset(ImageAssets.hand,),
              ],
            ),

            SizedBox(height:AppSize.s10 ,),
            Text(StringConstants.textonboarding12,textAlign: TextAlign.center,
                style:TextStyle(color: ColorManager.deepYellow,fontSize: AppSize.s16,fontWeight: FontWeightMnager.medium
                ) ),


            SizedBox(height:AppSize.s50,),
            Button(text: StringConstants.button1,onpressed: (){Get.to(LoginView());

            },
            ),


          ]));
}
}