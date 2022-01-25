import 'package:flutter/material.dart';
import 'package:flash_chat/Screens/registration_Screen.dart';
import 'package:flash_chat/Screens/login_screen.dart';


class WelcomeScreen extends StatefulWidget {
  static const String id='welcome screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children:[
              Flexible(
                child: Hero(
                  tag:'logo',
                  child:Container(
                    child:Image.asset('images/logo.png'),
                    height:60.0,
                  ),
                ),
              ),
              Text('Flash Chat',
                style: TextStyle(
                  fontSize: 56.0,
                  fontWeight: FontWeight.w700,

                ),
              ),
            ],
          ),
          SizedBox(
            height:50.0,
          ),
          Padding(
            padding:EdgeInsets.symmetric(horizontal:16.0),
            child: Material(
              elevation:5.0,
              color: Colors.lightBlueAccent,
              borderRadius:BorderRadius.circular(20.0) ,
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context,LoginScreen.id);
                },
                minWidth: 200.0,
                height:42.0,
                child:Text('log in',
                  style:TextStyle (
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height:25.0,
          ),
          Padding(
              padding:EdgeInsets.symmetric(horizontal:16.0),
              child: Material(
                elevation:5.0,
                color:Colors.lightBlue,
                borderRadius: BorderRadius.circular(30.0),
                child:MaterialButton(onPressed: () {
                  Navigator.pushNamed(context,RegistrationScreen.id);
                },
                  minWidth:200.0,
                  height:42.0,
                  child: Text('Register',
                      style:TextStyle (
                        color: Colors.white,
                      )
                  ),
                ),
              )
          ),
        ],

      ),
    );
  }
}
