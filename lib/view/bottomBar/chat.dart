
import 'package:flutter/material.dart';
import 'package:green_house/view/resources/asset_manager.dart';
import 'package:green_house/view/resources/color_manager.dart';
import 'package:green_house/view/resources/string_manager.dart';

import '../resources/font_manager.dart';
import '../resources/value_manager.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.white,
        centerTitle: true,
        elevation: AppSize.s4,
        title: Text(StringConstants.chat,style: TextStyle(
            color: ColorManager.deepYellow,fontSize: FontSizeManager.s22,
            fontFamily: FontConstant.fontfamily,fontWeight: FontWeightMnager.regular),),
        shadowColor: ColorManager.deepYellow,

        toolbarHeight:80.0,
      ),
      
      body: ListView(
        children: [
          Image(image: AssetImage(ImageAssets.chat_back),fit: BoxFit.cover,),
          ListView.builder(itemBuilder:(context, index) {

          }, ),
        ],
      ),
    );
  }
}
