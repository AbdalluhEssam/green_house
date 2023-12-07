

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_house/controllers/configration_controller.dart';
import 'package:green_house/controllers/useraccount_controller.dart';
import 'package:green_house/data/dataSource/model/soba_model.dart';
import 'package:green_house/view/resources/TextFormField.dart';
import 'package:green_house/view/resources/asset_manager.dart';
import 'package:green_house/view/resources/button.dart';
import 'package:green_house/view/resources/color_manager.dart';
import 'package:green_house/view/resources/font_manager.dart';
import 'package:green_house/view/resources/valid.dart';
import 'package:green_house/view/resources/value_manager.dart';
import 'package:green_house/view/bottomBar/useraccount.dart';

import '../resources/string_manager.dart';

class Configration_View extends StatefulWidget {
  const Configration_View({super.key});

  @override
  State<Configration_View> createState() => _Configration_ViewState();
}

class _Configration_ViewState extends State<Configration_View> {
  late SobaModel sobaModel ;

  @override
  Widget build(BuildContext context) {
    ConfigrationControllerImp controller = Get.put(ConfigrationControllerImp());
    AccountController controller2=Get.put(AccountController());
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.white,
        leading: IconButton(onPressed: (){Get.to(UserAccount());}, icon: Icon(Icons.arrow_back,color: ColorManager.deepYellow,)),
      ),
        backgroundColor: ColorManager.white,
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
        child: ListView(

          children: [
            Text(StringConstants.configTitle,textAlign: TextAlign.center,style: TextStyle(color: ColorManager.deepYellow,fontSize: FontSizeManager.s18,fontFamily: FontConstant.fontfamily),),
            SizedBox(height: AppSize.s20,),
            Text(StringConstants.config_subtitle,textAlign: TextAlign.center,style: TextStyle(color: ColorManager.deepYellow,fontSize: FontSizeManager.s20,fontFamily: FontConstant.fontfamily),),
            SizedBox(height: AppSize.s10,),

            Text(StringConstants.subtitle,textAlign: TextAlign.center,style: TextStyle(color: ColorManager.darkGray,fontSize: FontSizeManager.s16,fontFamily: FontConstant.fontfamily),),

            Padding(
              padding: const EdgeInsets.only(top: AppPadding.p20,bottom: AppPadding.p10),
              child: Image(image: AssetImage(ImageAssets.CONFIG),width: AppSize.s150,height: AppSize.s150,fit: BoxFit.contain,),
            ),
            SizedBox(height: 10,),
            CustomFormField(hint: StringConstants.systemname, mycontroller: controller.systemName,
                valid:(val) {
                return ValidInput(val!, 100, 100, 'name');
                }, obsecure: false),

            CustomFormField(hint: StringConstants.wifiname, mycontroller: controller.wifiName,
                valid:(val) {
                  return ValidInput(val!, 100, 100, 'name');
                }, obsecure: false),

            CustomFormField(hint: StringConstants.wifipassword, mycontroller: controller.wifiPassword,
                valid:(val) {
                  return ValidInput(val!, 100, 100, 'password');
                }, obsecure: false),
            SizedBox(height: AppSize.s30,),


           GetBuilder<AccountController>(
               builder:(controller2)=>
                   Button(text: StringConstants.buttonConfig, onpressed: (){

                     controller2.Add( "${sobaModel.sobaId}" );
                  })

           )
          ],
        ),
      ) ,
    );
  }
}




