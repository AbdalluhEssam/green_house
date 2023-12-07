

import 'package:get/get.dart';
import 'package:green_house/component/constants/handling_data.dart';
import 'package:green_house/component/constants/statusRequest.dart';
import 'package:green_house/data/remote/test_date.dart';


class TestController extends GetxController{

  // get.find is fixed inestance
  testData test = testData(Get.find());

  // save data here
  List data =[];

   late StatusRequest statusRequest ;

   getData()async{
     statusRequest= StatusRequest.loading;
     var response =await test.getData();
     statusRequest =handlingData(response);
     if(StatusRequest.success == statusRequest){

       if(response['status'] == "success"){
          data.addAll(response["data"]);
       }else{
          statusRequest =StatusRequest.failure;
       }
     }
     update();
   }

   @override
  void onInit() {
    // TODO: implement onInit
     getData();
    super.onInit();
  }
}


