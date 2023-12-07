


import '../../component/constants/Crud.dart';
import '../../component/constants/linkapi.dart';

class AccountData{

  Crud crud;
  AccountData(this.crud);

  AddSoba( //String user_id ,
      String? soba_id)async{
    var response = await crud.postData(AppLink.linkInsert, {
    //  "user_id" :user_id,
      "soba_id":soba_id
    });

    // fold function return left or right
    return response.fold((l) => l, (r) => r);

  }

  RemoveSoba(  //String user_id ,
      String? soba_id)async{
    var response = await crud.postData(AppLink.linkDelete, {
     // "user_id" :user_id,
      "soba_id":soba_id
    });

    // fold function return left or right
    return response.fold((l) => l, (r) => r);

  }
}