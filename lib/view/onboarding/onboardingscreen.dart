import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_house/view/onboarding/page_one.dart';
import 'package:green_house/view/onboarding/page_three.dart';
import 'package:green_house/view/onboarding/page_two.dart';
import '../../component/services/myservice.dart';
import '../resources/color_manager.dart';
import '../resources/value_manager.dart';


class OnboardingView extends StatefulWidget {
   OnboardingView({Key? key}) : super(key: key);


  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
final PageController _pageController= new PageController(initialPage: 0);
  int _activePage =0;
   MyServices myServices=Get.find();

  final List<Widget>_pages=[
    pageone(),
    pagetwo(),
    pagethree(),
  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(

     backgroundColor: ColorManager.white,
      body: Stack(
        children: [
          PageView.builder(

            physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              onPageChanged: (int page){
                setState(() {
                  _activePage=page;
                  if(_pageController.initialPage == _pages.length){
                    myServices.sharedPreferences.setInt("step", 1);
                    print("shared prefrence is true ");
                  };
                });
              },
              itemCount: _pages.length,
              itemBuilder: (BuildContext context, int index){
                return _pages[index % _pages.length];
              }),
          Positioned(
            bottom: 50,
              left: 0,
              right: 0,
              height: 100,
              child:Container(
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(_pages.length,
                          (index) => Padding(
                            padding:EdgeInsets.symmetric(horizontal: AppPadding.p10) ,
                            child:InkWell(

                              onTap: (){
                                _pageController.animateToPage(index,
                                    duration: Duration(milliseconds: 500),
                                    curve:Curves.bounceInOut);
                                if(_pageController == _pages.length){
                                  myServices.sharedPreferences.setString("onboarding", "1");
                                  print("shared prefrence is true ");
                                };

                              },
                              child: CircleAvatar(
                                radius: 6,
                                backgroundColor: _activePage == index
                                ? ColorManager.deepGreen : ColorManager.deepYellow,

                            )),
                ),
              )
          ),

      ),




          )



  ])  );
  }
}



