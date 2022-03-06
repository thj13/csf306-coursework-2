import 'package:firebase_auth/firebase_auth.dart';

class AuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //anonymous sign in
  Future signInAnon() async{
    try{
      UserCredential result = await _auth.signInAnonymously();
      var user = result.user;
      return user;
    }catch(exception){
      print(exception.toString());
      return null;
    }
  }

  //email and password sign in

  //register email and password

  //signout

}