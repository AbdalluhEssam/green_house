
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

/*
class AuthMethod{
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Register User

  Future<String> Register_User
      ({
    required String fullname ,
    required String password ,
    required String email ,
    required String phone ,
    required String gender ,
  })
  async{
    String res = "Some error Occurred";

    try{
      if(fullname.isNotEmpty||
          email.isNotEmpty||
          password.isNotEmpty||
          phone.isNotEmpty||
          gender.isNotEmpty){

        // register user in auth with email and password

        UserCredential credential=await _auth.createUserWithEmailAndPassword(email: email, password: password);

        // add user to your  firestore database
        print(credential.user!.uid);
        await _firestore.collection("Users").doc(credential.user!.uid).set({
          'name':fullname,
          'uid':credential.user!.uid,
          'email':email,
          'password':password,
          'phone':phone,
          'gender':gender,
        });
        String res = "ssucced";


      }
    }
    catch(error){
      return error.toString();
    }
    return res;
  }


  // Login User
  Future<String> loginUser({
    required String email,
    required String password,
  }) async {
    String res = "Some error Occurred";
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        // logging in user with email and password
        await _auth.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        res = "success";
      } else {
        res = "Please enter all the fields";
      }
    } catch (err) {
      return err.toString();
    }
    return res;
  }

}
*/