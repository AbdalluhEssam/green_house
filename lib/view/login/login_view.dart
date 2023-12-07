
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_house/view/forgetpassword/forgetpassword_view.dart';
import 'package:green_house/view/register/register_view.dart';
import '../../controllers/login_controller.dart';
import '../onboarding/onboardingscreen.dart';
import '../resources/TextFormField.dart';
import '../resources/asset_manager.dart';
import '../resources/button.dart';
import '../resources/color_manager.dart';
import '../resources/font_manager.dart';
import '../resources/string_manager.dart';
import '../resources/valid.dart';
import '../resources/value_manager.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {


  late  var ichecked=false;
  bool isloading =false;


   //login using loginUser
/*
  void loginUser()async{
    setState(() {
      isloading =true;
    });
    String res= await AuthMethod().loginUser(
        email: controller.email.text,
        password: controller.password.text);
    if (res == 'success'){
      isloading=false;

      //navigate to the home screen
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const UserAccount()));
    }else{
      isloading=false;
      // show snackbar
      ShowSnackBar(context, res);
    }
  }
*/

       @override
    Widget build(BuildContext context) {
         LoginControllerImp controller = Get.put(LoginControllerImp());

      return Scaffold(
            appBar: AppBar(
              backgroundColor: ColorManager.white,
              elevation: AppSize.s0,
              leading: IconButton(onPressed: () {
                Get.to(OnboardingView());
              },
                  icon: Icon(Icons.arrow_back, color: ColorManager.deepGreen,)),
            ),
            backgroundColor: ColorManager.white,
            body:   Form(
              key: controller.formState,
              child:ListView(
                      children: [
                        Image.asset(ImageAssets.splashimage, height: AppSize.s200,
                          width: AppSize.s250,),

                        SizedBox(height: 10,),

                        Text(StringConstants.LoginString,
                          textAlign: TextAlign.center,
                          softWrap: true,
                          style: TextStyle(color: ColorManager.deepYellow,
                              fontFamily: FontConstant.fontfamily,
                              fontSize: FontSizeManager.s30),),

                        //email field

                        CustomFormField(
                          hint: " Email ",
                          mycontroller: controller.email,
                          obsecure: false,
                          preIcon: Icon(
                            Icons.email_outlined, color: ColorManager.white,),
                          valid: (val) {
                            return ValidInput(val??"", 4, 100, 'email');
                          },
                        ),

                        //password field

                        CustomFormField(
                            hint: " Password",
                            obsecure: true,
                            suIcon: IconButton(onPressed: () {
                              setState(() {
                                icon:
                                Icon(Icons.remove_red_eye_outlined,
                                  color: ColorManager.white,);
                              });
                            },
                                icon: Icon(Icons.remove_red_eye_rounded,
                                  color: ColorManager.white,)),
                            preIcon: Icon(Icons.lock_outline_rounded,
                              color: ColorManager.white,),

                            mycontroller: controller.password,
                            valid: (val) {
                              return ValidInput(val??"", 4, 10,'password');
                            }),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: AppPadding.p20),

                              // check box
                              child: Checkbox(
                                materialTapTargetSize: MaterialTapTargetSize
                                    .shrinkWrap,
                                side: BorderSide(
                                    color: ColorManager.deepGreen, width: 2.0),
                                activeColor: ColorManager.deepGreen,
                                value: ichecked,
                                onChanged: (bool?value) {
                                  setState(() {
                                    ichecked = value!;
                                  });
                                },),
                            ),
                            Text(StringConstants.checkbox, style: TextStyle(
                                color: ColorManager.deepYellow,
                                fontFamily: FontConstant.fontfamily,
                                fontSize: FontSizeManager.s14)
                            )
                          ],
                        ),

                        // button sign in
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppPadding.p30,
                              vertical: AppPadding.p8),
                          child: Button(
                            text: StringConstants.buttonSignIn,
                            onpressed:()async{
                             await controller.login();
                            },
                        )),


                        // create account

                        Center(
                          child: TextButton(onPressed: () {
                            Get.to(PasswordView());
                          }, child: Text(StringConstants.textbutton, style:
                          TextStyle(color: ColorManager.deepGreen,
                              fontFamily: FontConstant.fontfamily,
                              fontSize: FontSizeManager.s14),)),
                        ),


                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [ Expanded(
                              child: Divider(
                              color: ColorManager.darkGray,thickness: AppSize.s1_5,)),

                            Text(StringConstants.Logindivider,
                              style: TextStyle(color: ColorManager.darkGray,
                                  fontFamily: FontConstant.fontfamily,
                                  fontSize: FontSizeManager.s14),),
                            Expanded(child: Divider(color: ColorManager.darkGray,thickness: AppSize.s1_5,)
                            ),
                          ]),
                        ),

                        SizedBox(height: AppSize.s10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            CircleAvatar(
                              backgroundColor: ColorManager.deepGreen,
                              child:  Center(
                                child: IconButton(onPressed: () {},
                                    icon: Image(image: AssetImage(ImageAssets.facebook),fit: BoxFit.contain,)),
                              ),
                              ),


                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: AppPadding.p10),
                              child: CircleAvatar(
                                backgroundColor: ColorManager.deepGreen,
                                child: Center(
                                  child: IconButton(onPressed: () {},
                                      icon: Image(image: AssetImage(ImageAssets.google),fit: BoxFit.contain,)),
                                ),
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: ColorManager.deepGreen,
                              child:Center(
                                child: IconButton(onPressed: () {},
                                    icon: Image(image: AssetImage(ImageAssets.apple),fit: BoxFit.contain,)),
                              ),

                            )
                          ],
                        ),

                        SizedBox(height: AppPadding.p8,),
                        Center(
                          child: RichText(text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: StringConstants.login3,
                                    style: TextStyle(
                                        color: ColorManager.darkGray,
                                        fontSize: FontSizeManager.s12,
                                        fontFamily: FontConstant.fontfamily)),

                                TextSpan(
                                  text: StringConstants.buttonSignUp,
                                  style: TextStyle(
                                      color: ColorManager.deepGreen,
                                      fontSize: FontSizeManager.s14,
                                      fontFamily: FontConstant.fontfamily
                                  ),
                                  recognizer: TapGestureRecognizer(
                                  )
                                    ..onTap = () => Get.to(RegisterView()),
                                )
                              ]


                          ),

                          ),
                        ),

                        SizedBox(height: AppSize.s30,)

                ]),
            ),





      );
    }
  }
