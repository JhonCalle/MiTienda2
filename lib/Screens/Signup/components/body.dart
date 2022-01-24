import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mitienda2/Screens/Login/login_screen.dart';
import 'package:mitienda2/Screens/Signup/components/background.dart';
import 'package:mitienda2/Screens/Signup/components/or_divider.dart';
import 'package:mitienda2/Screens/Signup/components/social_icon.dart';
import 'package:mitienda2/auth_provider/login_controller.dart';
import 'package:mitienda2/components/already_have_an_account_acheck.dart';
import 'package:mitienda2/components/rounded_button.dart';
import 'package:mitienda2/components/rounded_input_field.dart';
import 'package:mitienda2/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mitienda2/constants.dart';
import 'package:provider/provider.dart';

class Body extends StatefulWidget {

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              " \nREGÍSTRATE",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: kPrimaryColor),
              textAlign: TextAlign.center,
            ),
            Text(
              "Estás a punto de vivir una experiencia nueva",
              style: TextStyle(fontSize: 20, color: kPrimaryColor),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Teléfono",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "REGÍSTRATE",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
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

            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {
                    Provider.of<LoginController>(context, listen: false)
                        .googleLogin();
                  },
                ),
              ],
            ),
            GestureDetector(
              onTap: (){ print("holiiiiii");},
              child: Text(
                "\nRegístrame como vendedor\n",
                style: TextStyle(
                  color: kothercolor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Expanded buildDivider() {
    return Expanded(
      child: Divider(
        color: Color(0xFFD9D9D9),
        height: 1.5,
      ),
    );
  }
}