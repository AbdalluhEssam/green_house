import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:green_house/view/resources/asset_manager.dart';
import 'package:green_house/view/resources/string_manager.dart';
import 'package:green_house/view/resources/value_manager.dart';

import 'color_manager.dart';
import 'font_manager.dart';

class Awesome_View extends StatefulWidget {
  const Awesome_View({super.key});

  @override
  State<Awesome_View> createState() => _Awesome_ViewState();
}

class _Awesome_ViewState extends State<Awesome_View> {
  @override
  Widget build(BuildContext context) {
    return
      Padding(
          padding: const EdgeInsets.only(left: AppPadding.p20,right:AppPadding.p20,top: AppPadding.p8),
          child:  InkWell(
              onTap: () =>  AwesomeDialog(context: context,

                dialogType: DialogType.noHeader,
                headerAnimationLoop: false,

                body: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.close,color: ColorManager.deepYellow,size: AppSize.s35,)),
                      ],
                    ),

                    // SvgPicture.asset(ImageAssets.soil,fit: BoxFit.cover,),

                    // details container
                    Container(
                      height: AppSize.s80,
                      width:AppSize.s200 ,
                      decoration: BoxDecoration(shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(AppSize.s20),
                        color: ColorManager.deepGreen,

                      ),
                      child: Center(
                        child: Text(StringConstants.details,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: ColorManager.white,fontSize: FontSizeManager.s30,
                              fontFamily: FontConstant.fontfamily),),
                      ),
                    ),

                    SizedBox(height: AppPadding.p10,),
                    // body iinfo container
                    Container(
                      height: AppSize.s300,
                      width:AppSize.s400 ,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppSize.s20),
                        boxShadow: [BoxShadow(color: ColorManager.lightGray, blurRadius: 4, offset: Offset(7, 7)),],
                      ),

                      child: Column(

                        children: [

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              Image(image: AssetImage(ImageAssets.planet)),

                              Text(StringConstants.carrot,textAlign: TextAlign.center,
                                style: TextStyle(fontFamily: FontConstant.fontfamily,
                                  fontSize: FontSizeManager.s22,color: ColorManager.deepGreen,),),

                            ],
                          ),

                          SizedBox(height: AppSize.s20,),


                          Divider(height: AppSize.s9,color: ColorManager.darkGray,indent: 2,thickness: AppSize.s9),

                          SizedBox(height: AppSize.s20,),

                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [

                                    Image(image: AssetImage(ImageAssets.sun)),

                                    Text('59%',textAlign: TextAlign.center,
                                      style: TextStyle(fontFamily: FontConstant.fontfamily,
                                        fontSize: FontSizeManager.s18,color: ColorManager.deepGreen,),),
                                  ],),

                                VerticalDivider(color: ColorManager.darkGray,width: AppSize.s9,),


                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [

                                    Image(image: AssetImage(ImageAssets.water)),

                                    VerticalDivider(color: ColorManager.darkGray,thickness: AppSize.s1_5,),

                                    Text('47%',textAlign: TextAlign.center,
                                      style: TextStyle(fontFamily: FontConstant.fontfamily,
                                        fontSize: FontSizeManager.s18,color: ColorManager.deepGreen,),),
                                  ],),
                              ]),
                          SizedBox(height: AppSize.s20,),

                          Divider(height: AppSize.s9,color: ColorManager.darkGray,indent: 2,thickness: AppSize.s9),
                          SizedBox(height: AppSize.s20,),

                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [


                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [

                                    Image(image: AssetImage(ImageAssets.air)),

                                    VerticalDivider(color: ColorManager.darkGray,thickness: AppSize.s1_5,),

                                    Text('off',textAlign: TextAlign.center,
                                      style: TextStyle(fontFamily: FontConstant.fontfamily,
                                        fontSize: FontSizeManager.s18,color: ColorManager.deepGreen,),),
                                  ],),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [

                                    Image(image: AssetImage(ImageAssets.temp)),

                                    VerticalDivider(color: ColorManager.darkGray,thickness: AppSize.s1_5,width: AppSize.s9,),

                                    Text('30',textAlign: TextAlign.center,
                                      style: TextStyle(fontFamily: FontConstant.fontfamily,
                                        fontSize: FontSizeManager.s18,color: ColorManager.deepGreen,),),
                                  ],),
                              ]),
                          SizedBox(height: AppSize.s20,),
                          Divider(height: AppSize.s9,color: ColorManager.darkGray,indent: 2,thickness: AppSize.s9,),
                          SizedBox(height: AppSize.s20,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              Image(image: AssetImage(ImageAssets.earth)),

                              Text('Kafr Thanks',textAlign: TextAlign.center,
                                style: TextStyle(fontFamily: FontConstant.fontfamily,
                                  fontSize: FontSizeManager.s18,color: ColorManager.deepGreen,),),
                            ],)

                        ],),
                    )

                  ],
                ),
              ) .show(),
              child: SvgPicture.asset(ImageAssets.i,height: AppSize.s20,width: AppSize.s20,)));





  }
}


