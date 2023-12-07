import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_house/view/bottomBar/home.dart';

import '../bottomBar/chat.dart';
import '../bottomBar/settings.dart';
import '../bottomBar/useraccount.dart';
import 'color_manager.dart';
import 'font_manager.dart';
import 'string_manager.dart';
import 'value_manager.dart';

class Navigation_Bar extends StatefulWidget {
  const Navigation_Bar({super.key});

  @override
  State<Navigation_Bar> createState() => _Navigation_BarState();
}

class _Navigation_BarState extends State<Navigation_Bar> {


  int currentTab = 0;
  final List<Widget> screens=[
    UserAccount(),
    Chat(),
    Settings(),
    Home_view(),
  ];

  final PageStorageBucket bucket = PageStorageBucket() ;
  Widget currentscreen = UserAccount();

  @override
  Widget build(BuildContext context) {
    return  BottomAppBar(
      color: ColorManager.white,
      shape: CircularNotchedRectangle(),
      notchMargin: AppSize.s10,
      child: Container(
        height: AppSize.s50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Row(children: [
              MaterialButton(
                minWidth: AppSize.s40,

                onPressed: (){
                  setState(() {
                    currentscreen= Home_view();
                    currentTab =0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person,
                        color:currentTab == 0 ? ColorManager.deepGreen : ColorManager.deepYellow),

                    Text(StringConstants.profile,style: TextStyle(
                        color: currentTab == 0 ? ColorManager.deepGreen : ColorManager.deepYellow,
                        fontFamily: FontConstant.fontfamily),),
                  ],
                ),
              ),

              MaterialButton(
                minWidth: AppSize.s40,

                onPressed: (){
                  setState(() {
                    currentscreen=  Get.to(Chat()) as Widget;
                    currentTab =1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.chat,
                        color:currentTab == 1 ? ColorManager.deepGreen: ColorManager.deepYellow),

                    Text(StringConstants.chat,style: TextStyle(
                        color:currentTab == 1 ? ColorManager.deepGreen : ColorManager.deepYellow,
                        fontFamily: FontConstant.fontfamily),),
                  ],
                ),
              ),
            ],),

            Row(
              children: [
              MaterialButton(
                minWidth: AppSize.s40,

                onPressed: (){
                  setState(() {
                    currentscreen= UserAccount();
                    currentTab =3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person,
                        color:currentTab == 3 ? ColorManager.deepGreen : ColorManager.deepYellow),

                    Text(StringConstants.store,style: TextStyle(
                        color:currentTab == 3 ? ColorManager.deepGreen : ColorManager.deepYellow,
                        fontFamily: FontConstant.fontfamily),),
                  ],
                ),
              ),

              MaterialButton(
                minWidth: AppSize.s40,

                onPressed: (){
                  setState(() {
                    currentscreen= Settings();
                    currentTab =4;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.filter_list_sharp,
                        color:currentTab == 4 ? ColorManager.deepGreen : ColorManager.deepYellow),

                    Text(StringConstants.settings,style: TextStyle(
                        color:currentTab == 4 ? ColorManager.deepGreen : ColorManager.deepYellow,
                        fontFamily: FontConstant.fontfamily),),
                  ],
                ),
              ),
            ],)
          ],),
      ),
    );
  }
}
