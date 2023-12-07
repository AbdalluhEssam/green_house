import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:green_house/component/constants/linkapi.dart';
import 'package:green_house/component/constants/statusRequest.dart';
import 'package:green_house/component/constants/statusRequest.dart';
import 'package:green_house/controllers/home_controller.dart';
import 'package:green_house/controllers/item_controller.dart';
import 'package:green_house/controllers/login_controller.dart';
import 'package:green_house/data/dataSource/model/categories_models.dart';
import 'package:green_house/view/resources/asset_manager.dart';
import 'package:green_house/view/resources/font_manager.dart';
import 'package:green_house/view/resources/planets.dart';
import 'package:green_house/view/resources/stack_userAccount.dart';
import 'package:green_house/view/resources/string_manager.dart';
import 'package:green_house/view/resources/value_manager.dart';
import '../../component/constants/statusRequest.dart';
import '../../component/constants/statusRequest.dart';
import '../resources/color_manager.dart';


class Home_view extends StatefulWidget {
  const Home_view({super.key});

  @override
  State<Home_view> createState() => _Home_viewState();
}

class _Home_viewState extends State<Home_view> {

  HomeControllerImp controller= Get.put(HomeControllerImp());

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        elevation: 0.0,backgroundColor: ColorManager.white,
        title:Text(StringConstants.homeTitle,style:
        TextStyle(color: ColorManager.deepYellow,fontSize: AppSize.s20,fontWeight:FontWeightMnager.medium ),) ,
          centerTitle: true,
        leading: IconButton( onPressed: (){}, icon: Icon(Icons.arrow_back,color: ColorManager.deepYellow,)),),

      body: GetBuilder<HomeControllerImp>(
        builder: (controller) =>
            Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p30,vertical: AppPadding.p20),
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder:(context,index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Home_Card(gategoriesModel: GategoriesModel.fromJson(controller.categories[index])),
                  Home_Card(gategoriesModel: GategoriesModel.fromJson(controller.categories[index])),

                ],
              );


            },
            itemCount:controller.categories.length,
          )),
      ),




/*
            TextFormField(

              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(AppSize.s30)),
                enabled: true,
                focusColor: ColorManager.deepYellow,
                suffixIcon:IconButton(onPressed: (){}, icon: Icon(Icons.search,color: ColorManager.white,)) ,
                filled: true,
                fillColor:ColorManager.deepYellow ,
                hintText: StringConstants.hintText,
                prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_voice_sharp,color: ColorManager.white,)) ,

              ),
            ),
            SizedBox(height: AppSize.s20,),
*/


    );
  }
}
