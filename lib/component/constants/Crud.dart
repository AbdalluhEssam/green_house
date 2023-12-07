
/*
class Crud {
  getRequest (String url)async{
    try{
      var response=await http.get(Uri.parse(url));
      if(response.statusCode==200){
        var responsebody=jsonDecode(response.body);
        return responsebody;
      }else{
        print('error${response.statusCode}');
      }
    }catch(e){
      print('Error catch$e');
    }
  }
  Future postRequest (String url,Map data)
   async {
     await Future.delayed(Duration(seconds: 3));
     try {
       var response = await http.post(Uri.parse(url), body: data);
       if (response.statusCode == 200) {
         var responsebody = jsonDecode(response.body);
         return responsebody;
       } else {
         print('error${response.statusCode}');
       }
     } catch (e) {
       print('Error catch$e');
     }
   }
  }
*/

import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:green_house/component/constants/check_Internet.dart';
import 'package:green_house/component/constants/statusRequest.dart';
import 'package:http/http.dart' as http;


class Crud {

  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(Uri.parse(linkurl), body: data);
        print(response.statusCode);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responsebody = jsonDecode(response.body);
          print(responsebody);
          return Right(responsebody); //
        } else {
          return Left(StatusRequest.serverfailure);
        }
      } else {
        return Left(StatusRequest.offlinefailure);
      }
    }
    catch (_) {
      return Left(StatusRequest.Exceptionfailure);
    }
  }

}
