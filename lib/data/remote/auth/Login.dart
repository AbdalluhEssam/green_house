


import 'package:green_house/component/constants/Crud.dart';
import 'package:green_house/component/constants/linkapi.dart';

class LoginData{

  Crud crud;

  LoginData(this.crud);

  postData( String email , String password )async{

    var response = await crud.postData(AppLink.linklogin, {
      'email': email,
      'password':password,

    });

    // fold function return left or right
    return response.fold((l) => l, (r) => r);

  }
}