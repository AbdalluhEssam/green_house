

import 'package:green_house/component/constants/Crud.dart';
import 'package:green_house/component/constants/linkapi.dart';

class homeData{

  Crud crud;
  homeData(this.crud);

  getData()async{
    var response = await crud.postData(AppLink.linkhome, {});

    // fold function return left or right
    return response.fold((l) => l, (r) => r);

  }
}