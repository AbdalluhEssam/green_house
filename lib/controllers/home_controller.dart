


import 'package:get/get.dart';
import 'package:green_house/component/services/myservice.dart';
import 'package:green_house/controllers/useraccount_controller.dart';
import 'package:green_house/data/remote/home.dart';

import '../component/constants/handling_data.dart';
import '../component/constants/statusRequest.dart';

abstract class HomeController extends GetxController{

 // initialData();
  getData();
}

class HomeControllerImp extends  HomeController {

 // ProfileController profilecontroller=ProfileController();
  MyServices myServices = Get.find();
  String? username;

  // get.find is fixed inestance
  homeData homedata = homeData(Get.find());

  // save data here
  List categories =[];

  late StatusRequest statusRequest ;

/*
  initialData() {
    username = myServices.sharedPreferences.getString("username");
  }
*/
  @override
  void onInit() {
  //  initialData();
    getData();
    super.onInit();
  }

  @override
  getData() async{
    statusRequest= StatusRequest.loading;
    var response =await homedata.getData();
    statusRequest =handlingData(response);
    if(StatusRequest.success == statusRequest){

      if(response['status'] == "success"){
        categories.addAll(response["categories"]);
      }else{
        statusRequest =StatusRequest.failure;
      }
    }
    update();
  }

}