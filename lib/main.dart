import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mitienda2/Screens/Welcome/welcome_screen.dart';
import 'package:mitienda2/Screens/Signup-buyer/signup_screen_buyer.dart';
import 'package:mitienda2/Screens/Signup-seller/signup_screen_seller.dart';
import 'package:mitienda2/Screens/Login/login_screen.dart';
import 'package:provider/provider.dart';
import 'package:mitienda2/Screens/Cart/Cart_screen.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  MyApp();
}

void MyApp() {
  bool isLogged=false;
  String initialScreen='/welcome';
  if (1<0){
    //TODO si esta loggeado
    if (1>0){
      //TODO si es vendedor
      initialScreen = '/home_seller';
    }
    else{
      initialScreen = '/home_buyer';
    }
  }
  else {
    initialScreen = '/welcome';
  }
  runApp(MaterialApp(
      initialRoute: initialScreen,
      routes: {
        '/welcome': (context) => WelcomeScreen(),
        '/signup_buyer': (context) => SignUpScreenBuyer(),
        '/signup_seller': (context) => SignUpScreenSeller(),
        '/login': (context) => LoginScreen(),
        '/cart':(context) => cart_screen(),
      }
));
}
