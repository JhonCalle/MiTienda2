import 'package:flutter/material.dart';
import 'package:mitienda2/Screens/Signup/components/body.dart';
import 'package:mitienda2/auth_provider/login_controller.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
