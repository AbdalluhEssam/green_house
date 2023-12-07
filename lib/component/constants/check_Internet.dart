

import 'dart:io';

checkInternet()async{
  try{

    var result = await InternetAddress.lookup("google.com");
    // result of search            // .raw address is mean rows in list of address
    if(result.isNotEmpty && result[0] .rawAddress.isNotEmpty){

      // internet connected
      return true ;
    }
    // socketException implement from exception that is responsible of any errors
  }on SocketException catch(_){

    // not internet connected
    return false;
  }

}