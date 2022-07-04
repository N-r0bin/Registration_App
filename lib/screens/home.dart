import 'package:flutter/material.dart';
import 'package:login_and_registration/auth.dart';
import 'login.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(

          backgroundColor: Colors.green,
          title: const Center(
            child: Text(
              'LAB8!',
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.white,
              ),
            ),
          ),

        ),
        body: Center(
          child: IconButton(
            icon: Icon(Icons.logout, size: 50, color: Colors.green), onPressed: () async{
            var x= await Auth().sign_out();
            if(x=='true'){
              Navigator.
              pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: (context) => Login()), (route) => false);
            }
          },
          ),
        )
    );
  }
}
