import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_house/view/resources/MaterialButton.dart';
import 'package:green_house/view/resources/asset_manager.dart';
import 'package:green_house/view/resources/font_manager.dart';
import 'package:green_house/view/resources/value_manager.dart';

import '../resources/color_manager.dart';
import '../resources/slider.dart';
import '../resources/string_manager.dart';
import '../bottomBar/useraccount.dart';

class Reads_View extends StatefulWidget {
  const Reads_View({super.key});

  @override
  State<Reads_View> createState() => _Reads_ViewState();
}

class _Reads_ViewState extends State<Reads_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  IconButton(onPressed: (){Get.to(UserAccount());},
            icon: Icon(Icons.arrow_back,color: ColorManager.deepYellow,
            )),
        backgroundColor: ColorManager.white,
        centerTitle: true,
        elevation: AppSize.s4,
        title: Text(StringConstants.reading,style: TextStyle(
            color: ColorManager.deepYellow,fontSize: FontSizeManager.s22,
            fontFamily: FontConstant.fontfamily,fontWeight: FontWeightMnager.regular),),
        shadowColor: ColorManager.deepYellow,

        toolbarHeight:80.0,
      ),
      backgroundColor: ColorManager.white,
      body:ListView(
        scrollDirection:  Axis.vertical,
        children: [
          SizedBox(height:AppSize.s10,),
          Text(StringConstants.subtitle_reads,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: ColorManager.deepGreen,fontSize: FontSizeManager.s22,
              fontFamily: FontConstant.fontfamily,fontWeight: FontWeightMnager.regular),),
          SizedBox(height: AppSize.s10,),

          Container(
            height: AppSize.s80,
            margin: EdgeInsets.symmetric(horizontal: AppPadding.p60),
            color: ColorManager.deepGreen,
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Image(image: AssetImage(ImageAssets.reads),width: AppSize.s150,height: AppSize.s80,fit: BoxFit.cover,),
                Text(StringConstants.subtitle_g1,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ColorManager.white, fontWeight: FontWeightMnager.regular,
                    fontSize: FontSizeManager.s18,fontFamily: FontConstant.fontfamily),),

              ],
            ),
          ),
         SizedBox(height: AppSize.s12,),

         Material_Button(text: StringConstants.Temprature, button_text: '  25 C ', onPressed: null),
          SizedBox(height: AppSize.s15,),
          Material_Button(text: StringConstants.Humidity,  button_text: '  79 % ', onPressed:null),
          SizedBox(height: AppSize.s15,),

         Material_Button(text: StringConstants.carbone,    button_text: '0.008 %', onPressed: null),
          SizedBox(height: AppSize.s15,),

          Material_Button(text: StringConstants.soil,      button_text: '  41 % ', onPressed: null),
          SizedBox(height: AppSize.s15,),

          Material_Button(text: StringConstants.ph,        button_text: '  5.5  ', onPressed:null),
          SizedBox(height: AppSize.s15,),

          Material_Button(text: StringConstants.wind,      button_text: ' 3 km/h', onPressed: null),
          SizedBox(height: AppSize.s15,),

          Material_Button(text: StringConstants.Rain,      button_text: '  1.00 ', onPressed: null),
          SizedBox(height: AppSize.s10,),

          Text(StringConstants.Light,textAlign: TextAlign.center,style:TextStyle(
              color: ColorManager.deepGreen, fontWeight: FontWeightMnager.regular,
              fontSize: FontSizeManager.s20,fontFamily: FontConstant.fontfamily),),

          SizedBox(height: AppPadding.p10,),
          // slider
          Slider_View(),


          SizedBox(height: AppPadding.p20,),





        ],
      ),

    );
  }
}
