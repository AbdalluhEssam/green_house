
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:green_house/data/dataSource/model/soba_model.dart';
import 'package:green_house/view/resources/stack_userAccount.dart';
import 'package:green_house/view/resources/string_manager.dart';
import 'package:green_house/view/resources/value_manager.dart';

import '../../component/constants/linkapi.dart';
import '../../controllers/home_controller.dart';
import '../../controllers/item_controller.dart';
import '../../data/dataSource/model/categories_models.dart';
import '../../data/dataSource/model/soba_model.dart';
import '../items/Item_view.dart';
import 'asset_manager.dart';
import 'awesome_dialog.dart';
import 'color_manager.dart';
import 'font_manager.dart';

class Home_Card extends StatelessWidget {
   Home_Card({super.key, required this.gategoriesModel,});
   final GategoriesModel gategoriesModel;

  @override
  Widget build(BuildContext context) {
    ItemControllerImp controller = Get.put(ItemControllerImp());

    return InkWell(
      onTap: () => Item_View,
      child:
         Container(
          height:AppSize.s160,
          width: AppSize.s160,
          margin: EdgeInsets.symmetric(vertical: AppMargin.m12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s20),
            color: ColorManager.deepGreen,
          ),
          child : Column (
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children : [
                Row (
                  mainAxisAlignment : MainAxisAlignment.end,

                  children: [

                    Awesome_View(),
                  ],),


                Image.network("${AppLink.image}/${gategoriesModel.categoryImage}",
                    height: AppSize.s60,width: AppSize.s80),

                Text("${gategoriesModel.categoryName}",
                  style: TextStyle(color: ColorManager.white,
                      fontSize: FontSizeManager.s18,
                      fontFamily: FontConstant.fontfamily),
                  textAlign: TextAlign.center,),


                MaterialButton(onPressed: (){
                },
                    color:ColorManager.deepYellow ,
                    height: AppSize.s30,
                    child: Text(StringConstants.Add,style:
                    TextStyle(color: ColorManager.white,fontSize: AppSize.s16,
                        fontFamily: FontConstant.fontfamily),textAlign: TextAlign.center,)),


              ])),

    );

  }
}
