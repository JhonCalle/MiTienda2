import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mitienda2/Screens/Login/login_screen.dart';
import 'package:mitienda2/Screens/Signup/signup_screen.dart';
import 'package:mitienda2/Screens/Welcome/components/background.dart';
import 'package:mitienda2/components/rounded_button.dart';
import 'package:mitienda2/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "BIENVENIDO A\n¡TIENDAS YA!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35, color:kPrimaryColor),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              "assets/icons/login.png",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "ENTRAR",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "REGISTRARME",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
