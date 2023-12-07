

import 'package:green_house/component/constants/Crud.dart';
import 'package:green_house/component/constants/linkapi.dart';

class testData{

  Crud crud;
  testData(this.crud);

  getData()async{
    var response = await crud.postData(AppLink.test, {});

    // fold function return left or right
    return response.fold((l) => l, (r) => r);

  }
}