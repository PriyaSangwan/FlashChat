import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/Screens/login_screen.dart';
import 'package:flash_chat/Screens/welcome_screen.dart';
import 'package:flash_chat/Screens/chat_screen.dart';
import 'package:flash_chat/Screens/registration_Screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: WelcomeScreen.id,
        routes:{
        WelcomeScreen.id:(context)=>WelcomeScreen(),
       RegistrationScreen.id:(context)=>RegistrationScreen(),
       LoginScreen.id:(context)=>LoginScreen(),
        ChatScreen.id:(context)=>ChatScreen(),
        }
    );
  }
}
