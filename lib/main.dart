import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mitienda2/Screens/Welcome/welcome_screen.dart';
import 'package:mitienda2/auth_provider/login_controller.dart';
import 'package:mitienda2/constants.dart';
import 'package:provider/provider.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    if (1>0){ //en caso de que no este loggeado
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Auth',
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
        ),
        home: WelcomeScreen(),
      );
    }
    else{ //en caso de que si este loggeado
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Auth',
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
        ),
        home: WelcomeScreen(),
      );
    }

  }
}
