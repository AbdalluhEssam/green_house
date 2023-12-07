
import 'package:get/get.dart';
import 'package:green_house/component/constants/statusRequest.dart';

import '../component/constants/handling_data.dart';
import '../component/services/myservice.dart';
import '../data/dataSource/model/soba_model.dart';
import '../data/remote/account_data.dart';
import '../view/resources/stack_userAccount.dart';

class AccountController extends GetxController{
late SobaModel sobaModel ;
Map isAccount ={};
   // key => sobaId
   // val =>0/1
setAccount(id,val){
  isAccount[id] =val ;
  update();
}
AccountData accountData =AccountData(Get.find());
late StatusRequest statusRequest;
MyServices myServices =Get.find();
 List soba=[];



  Add (String soba_id) async{
    statusRequest= StatusRequest.loading;
    var response =await accountData.AddSoba(
        //myServices.sharedPreferences.getString("user_id"),
        soba_id);
    print("================controller $response");
    statusRequest =handlingData(response);
    if(StatusRequest.success == statusRequest){

      //start backend
      if(response['status'] == "success"){
        soba.addAll(response["data"]);
        Get.rawSnackbar(
            title:"Done" ,
            message: "The soba is deleted successfully");
        //Soba(sobaModel: SobaModel.fromJson(controller2.soba[index]));

      }else{
        statusRequest =StatusRequest.failure;
        print("Something is wrong");

      }
      //end
    }
  }
  Delete (String soba_id) async{
    statusRequest= StatusRequest.loading;
    var response =await accountData.RemoveSoba(soba_id);
    statusRequest =handlingData(response);
    print("================controller $response");

    if(StatusRequest.success == statusRequest){

      if(response['status'] == "success"){
       // soba.addAll(response["data"]);
        Get.rawSnackbar(
          title:"Done" ,
          message: "The soba is deleted successfully",

        );
      }else{
        statusRequest =StatusRequest.failure;
        print("Something is wrong");
      }
    }
  }
late String id;
@override
  void onInit() {
    id = Get.arguments['id'];
    super.onInit();
  }

}