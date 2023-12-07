

import 'package:green_house/component/constants/Crud.dart';
import 'package:green_house/component/constants/linkapi.dart';

class SignUpData{

  Crud crud;
  SignUpData(this.crud);

  postData(String username , String email , String password , String phone , String gender)async{

    var response = await crud.postData(AppLink.linksignup, {
      'username': username,
      'email': email,
      'password':password,
      'phone':phone,
      "gender":gender,
    });

    // fold function return left or right
    return response.fold((l) => l, (r) => r);

  }
}