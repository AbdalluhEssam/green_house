
import 'package:green_house/component/constants/Crud.dart';
import 'package:green_house/component/constants/linkapi.dart';

class ItemData{

  Crud crud;
  ItemData(this.crud);

  getData()async{
    var response = await crud.postData(AppLink.linkInsert, {});

    // fold function return left or right
    return response.fold((l) => l, (r) => r);

  }
}