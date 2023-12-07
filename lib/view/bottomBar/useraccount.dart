import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:green_house/view/configration/configration.dart';
import 'package:green_house/view/resources/bottom_navigationBar.dart';
import 'package:green_house/view/resources/stack_userAccount.dart';
import 'package:green_house/view/resources/string_manager.dart';
import 'package:green_house/view/test.dart';
import '../login/login_view.dart';
import '../resources/asset_manager.dart';
import '../resources/color_manager.dart';
import '../resources/font_manager.dart';
import '../resources/search_field.dart';
import '../resources/value_manager.dart';

class UserAccount extends StatefulWidget {
  const UserAccount({Key? key, }) : super(key: key);
  @override
  State<UserAccount> createState() => _UserAccountState();
}

class _UserAccountState extends State<UserAccount> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        backgroundColor: ColorManager.white,
        appBar: AppBar(
          elevation: 0.0,backgroundColor: ColorManager.deepGreen,
        leading: IconButton(onPressed : (){}, icon : Icon(Icons.arrow_back,color: ColorManager.white,)),),


                body: Stack(
                      children: [
                       // Soba(sobaModel: con),
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                              height: Get.height*0.2,
                              width: Get.width,
                              decoration: BoxDecoration(
                                color: ColorManager.deepGreen,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(AppSize.s150),
                                    bottomRight: Radius.circular(AppSize.s150)),

                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8 ),
                                child: Stack(

                                  children: [

                                    Positioned(
                                      top: 0,
                                      left: 0,
                                      right: 0,
                                      child: Container(
                                          height: Get.height*0.2,
                                          width: Get.width,
                                          decoration: BoxDecoration(
                                            color: ColorManager.deepGreen, borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(AppSize.s150),
                                              bottomRight: Radius.circular(AppSize.s150)),
                                          ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8 ),
                                child: Column(

                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                      children: [
                                        Row(
                                          children: [

                                            Container(
                                                height: 50,
                                                width:50,
                                                margin: const EdgeInsets.symmetric(horizontal: AppMargin.m10),
                                                decoration: BoxDecoration(
                                                    color: ColorManager.white,
                                                    borderRadius: BorderRadius.circular(AppSize.s30)),

                                                child: SvgPicture.asset(ImageAssets.circle,fit: BoxFit.fill,)
                                            ),
                                            Text(StringConstants.name,style: TextStyle(color: ColorManager.white,
                                                fontFamily: FontConstant.fontfamily,fontSize: FontSizeManager.s30),),
                                          ],),

                                        // bell notification
                                        /*
                                        Container(
                                            height: 50,
                                            width:50,
                                            decoration: BoxDecoration(
                                                color: ColorManager.white,
                                                borderRadius: BorderRadius.circular(AppSize.s30)),),

                                         */

                                      ],
                                    ),



                                        Text( '',
                                          style:TextStyle(
                                              fontSize:FontSizeManager.s18,
                                              fontFamily: FontConstant.fontfamily,
                                              color: ColorManager.deepYellow,

                                          ) ,),


                                    // search field

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(StringConstants.greenhouse,
                                          style:TextStyle(
                                            fontSize:FontSizeManager.s18,
                                            fontFamily: FontConstant.fontfamily,
                                            color: ColorManager.white,
                                          ) ,),

                                        Container(

                                          width: AppSize.s80,
                                          height: AppSize.s30,
                                          decoration: BoxDecoration(
                                              color: ColorManager.white,
                                              borderRadius: BorderRadius.circular(AppSize.s15)
                                          ),
                                          child: Text(StringConstants.container,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize:FontSizeManager.s14,
                                              fontFamily: FontConstant.fontfamily,
                                              color: ColorManager.deepYellow,
                                            ),),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ],
                    ),

                          ))),



                  Padding(
                    padding: const EdgeInsets.only(top: 120),
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,

                          itemCount: 2,
                          itemBuilder: (context, index) =>
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [

                              ],
                            )
                            /*
                            Padding(padding: EdgeInsets.only(top: AppSize.s400,left: AppPadding.p30,right: AppPadding.p30),
                                child: ElevatedButton(onPressed: (){Get.to(Configration_View());},
                                    child: Text(StringConstants.add_button))),
                            */
                          ),
                  ),


]),

      floatingActionButton: FloatingActionButton(
            backgroundColor: ColorManager.deepGreen,
            child: Icon(Icons.home_filled,color: ColorManager.white,),
            onPressed: (){}),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


        bottomNavigationBar:Navigation_Bar(),

    );




  }}
