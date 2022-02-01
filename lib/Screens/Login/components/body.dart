import 'package:flutter/material.dart';
import 'package:mitienda2/Screens/Login/components/background.dart';
import 'package:mitienda2/components/already_have_an_account_acheck.dart';
import 'package:mitienda2/components/rounded_button.dart';
import 'package:mitienda2/components/rounded_input_field.dart';
import 'package:mitienda2/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mitienda2/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:mitienda2/Screens/Signup-seller/components/or_divider.dart';
import 'package:mitienda2/Screens/Signup-seller/components/social_icon.dart';
import 'package:mitienda2/auth_provider/login_controller.dart';


class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.04),
            const Text(
              "Hola de nuevo\n¡Kaserit@!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: kPrimaryColor),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Teléfono",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "ENTRAR",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
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
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.pushNamed(context, '/signup_buyer');
              },
            ),
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}
