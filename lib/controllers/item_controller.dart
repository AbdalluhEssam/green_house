
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:green_house/data/remote/items_data.dart';

import '../component/constants/handling_data.dart';
import '../component/constants/statusRequest.dart';
import '../component/services/myservice.dart';

abstract class ItemController extends GetxController{

  // initialData();
  getItems();
}

class ItemControllerImp extends  ItemController {

  MyServices myServices = Get.find();

  // get.find is fixed inestance
  ItemData itemdata = ItemData(Get.find());

  // save data here
  List item =[];

  late  StatusRequest statusRequest ;

/*
  initialData() {
    username = myServices.sharedPreferences.getString("username");
  }
*/
  @override
  void onInit() {
    //  initialData();
    getItems();
    super.onInit();
  }




  @override
  getItems() async{
    statusRequest= StatusRequest.loading;
    var response =await itemdata.getData();
    statusRequest =handlingData(response);
    if(StatusRequest.success == statusRequest){

      if(response['status'] == "success"){
        item.addAll(response["item"]);
      }else{
        statusRequest =StatusRequest.failure;
      }
    }
    update();
  }



}