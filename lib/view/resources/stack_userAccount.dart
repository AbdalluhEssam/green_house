import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:green_house/data/dataSource/model/soba_model.dart';
import 'package:green_house/view/resources/font_manager.dart';
import '../../component/constants/linkapi.dart';
import '../../controllers/item_controller.dart';
import 'asset_manager.dart';
import 'color_manager.dart';
import 'value_manager.dart';

class Soba extends StatelessWidget {
   Soba({super.key, required this.sobaModel, });
  final SobaModel sobaModel;

   @override
  Widget build(BuildContext context) {
     ItemControllerImp controller = Get.put(ItemControllerImp());

     return
        Container(
        height: AppSize.s200,
          width: AppSize.s400,
          margin: EdgeInsetsDirectional.symmetric(horizontal: AppSize.s20,vertical: AppSize.s10),
          child: Container(
        height: AppSize.s200,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: AppSize.s10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppPadding.p30),
            color: ColorManager.deepGreen),
        child:
            Stack(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Image.network(
                "${AppLink.image}/${sobaModel.sobaImage}",
                height: AppSize.s150,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fitWidth,
              ),
              Row(children: [],),

              Container(

                height: AppSize.s30,
                width: AppSize.s90,
                margin: EdgeInsets.symmetric(horizontal: AppSize.s20,vertical: AppSize.s20),
                decoration: BoxDecoration(
                  color: ColorManager.deepGreen,
                  borderRadius: BorderRadiusDirectional.circular(AppSize.s15),

                ),
                child: Text('${sobaModel.sobaName}',textAlign: TextAlign.center,style:
                TextStyle(color: ColorManager.white,fontSize: FontSizeManager.s16,fontFamily: FontConstant.fontfamily),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(children: [
                    Text("cc",style: TextStyle(color: ColorManager.white,fontSize: AppSize.s12,fontWeight: FontWeightMnager.medium),),
                    SvgPicture.asset(ImageAssets.temp,color: ColorManager.deepGreen,height: AppSize.s50, ),
                  ],),
                  Column(children: [
                    Text("cc",style: TextStyle(color: ColorManager.white,fontSize: AppSize.s12,fontWeight: FontWeightMnager.medium),),
                    SvgPicture.asset(ImageAssets.temp,color: ColorManager.deepGreen,height: AppSize.s50, ),
                  ],),
                  Column(children: [
                    Text("cc",style: TextStyle(color: ColorManager.white,fontSize: AppSize.s12,fontWeight: FontWeightMnager.medium),),
                    SvgPicture.asset(ImageAssets.temp,color: ColorManager.deepGreen,height: AppSize.s50, ),
                  ],),
                  Column(children: [
                    Text("cc",style: TextStyle(color: ColorManager.white,fontSize: AppSize.s12,fontWeight: FontWeightMnager.medium),),
                    SvgPicture.asset(ImageAssets.temp,color: ColorManager.deepGreen,height: AppSize.s50, ),
                  ],)
              ],)


            ],
          ),

      )
    );
  }
}
