import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/constants.dart';
import 'package:flash_chat/button.dart';
import 'chat_screen.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginScreen extends StatefulWidget {
  static const id='login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showSpinner=false;
  late String email;
  late String password;
final _auth=FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:ModalProgressHUD(
        inAsyncCall: showSpinner,
        child:
      Padding(
          padding: const EdgeInsets.symmetric(horizontal:24.0),
          child: Column(
            children: [
              Flexible(
                child: Hero(
                  tag:'logo',
                  child:Container(
                    height:280.0,
                    child:Image.asset('images/logo.png'),
                  ),
                ),
              ),
              SizedBox(
                height:19.0,
              ),
              TextField(
                keyboardType:TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  email=value;
                },
                decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your email'),
              ),
              SizedBox(
                height: 19.0,
              ),
              TextField(
                textAlign: TextAlign.center,
                obscureText: true,
                onChanged: (value) {
                  password=value;
                },
                decoration:kTextFieldDecoration.copyWith(hintText: 'Enter your Passward'),
              ),
              SizedBox(
                height:10.0,
              ),
              Button(
                title:'Log In',
                color:Colors.lightBlueAccent,
                onPressed: () async{
                 setState(() {
                   showSpinner=true;
                  });
                  try{
                    final user=await _auth.signInWithEmailAndPassword(email: email, password: password);
                    if(user!=null)
                      Navigator.pushNamed(context,ChatScreen.id);
                  setState(() {
                    showSpinner=false;
                  });
                  }
                  catch(e){
                    print(e);
                  }
                }

              ),
            ],
          ),
        ),
      ),
    );
  }
}

