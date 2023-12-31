import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_house/view/login/login_view.dart';
import 'package:green_house/view/register/register_view.dart';

import 'package:green_house/view/resources/value_manager.dart';
import '../onboarding/onboardingscreen.dart';
import '../resources/asset_manager.dart';
import '../resources/color_manager.dart';

import '../resources/constant_manager.dart';
import '../resources/route_manager.dart';
import '../bottomBar/useraccount.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

  _startdelay(){
    _timer=Timer(Duration(seconds: AppConstants.splashdelay),_gonext);
  }

  _gonext() {
    Navigator.pushReplacementNamed(context, Routes.onboardingscreenRoute);
  }
  @override

  void initState() {
    super.initState();
    _startdelay();
  }

  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        backgroundColor: ColorManager.white,
        body:  AnimatedSplashScreen (
           splash: Image(image: AssetImage(ImageAssets.splashimage),height: AppSize.s300,width: AppSize.s300,),
          nextScreen:LoginView() ,
          splashTransition: SplashTransition.sizeTransition,
          animationDuration: Duration(milliseconds: 200),
          backgroundColor:ColorManager.white ,
          splashIconSize:250 ,
        )
            ),

    );
  }

}

