import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final _auth = FirebaseAuth.instance;
  Future sign_up(String email, String password)async{
    try{
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return 'true';
    }
    catch(e){
      return e.toString();
    }
  }
  Future sign_in(String email, String password)async{
    try{
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return 'true';
    }
    catch(e){
      return e.toString();
    }
  }

  Future sign_out()async{
    try{
      _auth.signOut();
      return 'true';
    }
    catch(e){
      return e.toString();
    }


  }
}