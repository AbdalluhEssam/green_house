import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_house/view/configration/configration.dart';
import 'package:green_house/view/login/login_view.dart';
import 'package:green_house/view/resources/asset_manager.dart';
import 'package:green_house/view/resources/dropdownbutton.dart';
import '../../controllers/register_controller.dart';
import '../resources/TextFormField.dart';
import '../resources/color_manager.dart';
import '../resources/string_manager.dart';
import '../resources/valid.dart';
import '../resources/value_manager.dart';

bool isActive = false;

class RegisterView extends StatefulWidget {
  RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  String dropdownvalue = ' ';
  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    RegisterControllerImp controller = Get.put(RegisterControllerImp());
/*
    void Register_User()async{
      //set isloading true
      setState(() {
        isloading=true;
      });

      //signUp using Authmethod
      String res = await AuthMethod().Register_User(
          fullname: controller.fullname.text,
          password: controller.password.text,
          email: controller.email.text,
          phone: controller.phone.text,
          gender: controller.gender.text) ;

      // if string return is success, user has been creaded and navigate to next screen other witse show error.

      if(res == 'success'){
        setState(() {
          isloading =false;
        });
        // navigate to the next screen
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const UserAccount()));
      }else{
        setState(() {
          isloading=false;
        });
        //show error
        ShowSnackBar(context, res);


      }
    }
*/

    return Form(
      key: controller.formstate,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.to(LoginView());
              },
              icon: Icon(
                Icons.arrow_back,
                color: ColorManager.deepGreen,
              )),
        ),
        backgroundColor: ColorManager.white,
        body: isloading == true
            ? Center(child: CircularProgressIndicator())
            : ListView(
                children: [
                  Image.asset(
                    ImageAssets.accountpicture,
                    alignment: Alignment.topCenter,
                    width: 200,
                    height: 150,
                  ),
                  //Fullname field
                  CustomFormField(
                      hint: 'Full Name',
                      mycontroller: controller.username,
                      valid: (val) {
                        return ValidInput(val!, 4, 20, 'username');
                      },
                      obsecure: false),

                  // Email field
                  CustomFormField(
                    hint: 'Email',
                    mycontroller: controller.email,
                    valid: (val) {
                      return ValidInput(val!, 6, 40, 'email');
                    },
                    obsecure: false,
                    suIcon: Icon(
                      Icons.email_outlined,
                      color: ColorManager.white,
                    ),
                  ),

                  //Password field

                  CustomFormField(
                      hint: 'Password',
                      mycontroller: controller.password,
                      valid: (val) {
                        return ValidInput(val!, 4, 20, 'password');
                      },
                      obsecure: false),

                  // phone field


                       CustomFormField(
                          hint: 'phone',
                          mycontroller: controller.phone,
                          valid: (val) {
                            return ValidInput(val!, 11, 11, 'phone');
                          },
                          obsecure: false),
                      /*
                   IntlPhoneField(
                     decoration: InputDecoration(

                         filled:true ,
                         fillColor: ColorManager.lightgreen),
                      controller: controller.phone,
                      showDropdownIcon: true,
                      showCountryFlag: true,
                      initialCountryCode: StringConstants.eygptsign,
                      cursorColor: ColorManager.white,
                      keyboardType:TextInputType.number ,
                      languageCode: "en",
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                      onCountryChanged: (country) {
                        print('Country changed to: ' + country.name);
                      },

                    ),

                        */


                  // gender field
                  DropDownButton(
                    controller: controller.gender,
                    dropdownvalue: StringConstants.gender,
                    list: [
                      StringConstants.gender,
                      StringConstants.male,
                      StringConstants.female
                    ],
                    hint: StringConstants.gender,
                  ),

                  SizedBox(
                    height: AppMargin.m14,
                  ),
                  Center(
                    child: ElevatedButton(
                      child: Text(
                        StringConstants.button3,
                      ),
                      onPressed: () async {
                        Get.to(Configration_View());
                        await controller.register();
                      },
                    ),
                  )
                ],
              ),
      ),
    );
  }
}
