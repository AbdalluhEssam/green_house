


import 'package:green_house/component/constants/statusRequest.dart';

handlingData(response){

  if(response is StatusRequest){
    // return state of respones
    return response;
  }else{

    // data is send successfully
    return StatusRequest.success;
  }
}