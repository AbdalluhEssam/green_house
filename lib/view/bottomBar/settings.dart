import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_house/view/resources/asset_manager.dart';
import 'package:green_house/view/resources/slider.dart';
import 'package:green_house/view/resources/switch.dart';
import 'package:green_house/view/bottomBar/useraccount.dart';
import '../resources/bottom_navigationBar.dart';
import '../resources/color_manager.dart';
import '../resources/font_manager.dart';
import '../resources/string_manager.dart';
import '../resources/value_manager.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading:  IconButton(onPressed: (){Get.to(UserAccount());},
            icon: Icon(Icons.arrow_back,color: ColorManager.deepYellow,
            )),
        backgroundColor: ColorManager.white,
        centerTitle: true,
        elevation: AppSize.s4,
        title: Text(StringConstants.settings,style: TextStyle(
            color: ColorManager.deepYellow,fontSize: FontSizeManager.s22,
            fontFamily: FontConstant.fontfamily,fontWeight: FontWeightMnager.regular),),
        shadowColor: ColorManager.deepYellow,

        toolbarHeight:80.0,
      ),
      backgroundColor: ColorManager.white,
      body:ListView(
        children: [

          SizedBox(height:AppSize.s10,),

          Text(StringConstants.mode,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: ColorManager.deepGreen,fontSize: FontSizeManager.s22,
                fontFamily: FontConstant.fontfamily,fontWeight: FontWeightMnager.regular),),

          SizedBox(height: AppSize.s10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Container(
              height: AppSize.d100,
             width: AppSize.s150,
             // margin: EdgeInsets.symmetric(horizontal: AppPadding.p60),
              decoration: BoxDecoration(
                color: ColorManager.deepGreen, 
                  borderRadius: BorderRadiusDirectional.circular(AppPadding.p12),
              ),
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Text(StringConstants.auto,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: ColorManager.white, fontWeight: FontWeightMnager.regular,
                        fontSize: FontSizeManager.s18,fontFamily: FontConstant.fontfamily),),

                  Switch_view()
                ],
              ),
            ),


              Container(
                height: AppSize.d100,
                width: AppSize.s150,
                // margin: EdgeInsets.symmetric(horizontal: AppPadding.p60),
                decoration: BoxDecoration(
                  color: ColorManager.deepGreen,
                  borderRadius: BorderRadiusDirectional.circular(AppPadding.p12),
                ),
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Text(StringConstants.man,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: ColorManager.white, fontWeight: FontWeightMnager.regular,
                    fontSize: FontSizeManager.s18,fontFamily: FontConstant.fontfamily),),
                     /*
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(StringConstants.l1,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: ColorManager.white, fontWeight: FontWeightMnager.regular,
                              fontSize: FontSizeManager.s16,fontFamily: FontConstant.fontfamily),),
                        Text(StringConstants.l2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: ColorManager.white, fontWeight: FontWeightMnager.regular,
                              fontSize: FontSizeManager.s16,fontFamily: FontConstant.fontfamily),),
                    ],),

                     */
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Switch_view(),
                        Switch_view()

                      ],
                    ),

                  ],
                ),
              ),

          ],),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Expanded(
                flex: 1,
                child: Text(StringConstants.watering,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: ColorManager.deepGreen, fontWeight: FontWeightMnager.regular,
                      fontSize: FontSizeManager.s18,fontFamily: FontConstant.fontfamily),),
              ),

              Expanded(
                flex: 2,
                  child: Slider_view()),
          ],),

          SizedBox(height: AppSize.s10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Expanded(
                flex: 1,
                child: Text(StringConstants.ventilation,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: ColorManager.deepGreen, fontWeight: FontWeightMnager.regular,
                      fontSize: FontSizeManager.s18,fontFamily: FontConstant.fontfamily),),
              ),

              Expanded(
                  flex: 2,
                  child: Slider_view()),
            ],),
          SizedBox(height: AppSize.s10,),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Expanded(
                flex: 1,
                child: Text(StringConstants.test,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: ColorManager.deepGreen, fontWeight: FontWeightMnager.regular,
                      fontSize: FontSizeManager.s18,fontFamily: FontConstant.fontfamily),),
              ),

              Expanded(
                  flex: 2,
                  child: Slider_view()),
            ],),
          SizedBox(height: AppSize.s20,),


          Text(StringConstants.light,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: ColorManager.deepGreen, fontWeight: FontWeightMnager.regular,
                fontSize: FontSizeManager.s30,fontFamily: FontConstant.fontfamily),),
          SizedBox(height: AppSize.s10,),

          Slider_View(),

          SizedBox(height: AppSize.s30,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(StringConstants.rename,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: ColorManager.deepGreen, fontWeight: FontWeightMnager.regular,
                      fontSize: FontSizeManager.s16,fontFamily: FontConstant.fontfamily),),
                InkWell(child: Image(image: AssetImage(ImageAssets.rename)))
            ],),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(StringConstants.remove,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: ColorManager.deepGreen, fontWeight: FontWeightMnager.regular,
                        fontSize: FontSizeManager.s16,fontFamily: FontConstant.fontfamily),),
                  InkWell(child: Image(image: AssetImage(ImageAssets.remove)))
                ],),
          ],),

        ],
      ) ,

      floatingActionButton: FloatingActionButton(
          backgroundColor: ColorManager.deepGreen,
          child: Icon(Icons.home_filled,color: ColorManager.white,),
          onPressed: (){}),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


      bottomNavigationBar:Navigation_Bar(),

    );
  }
}
