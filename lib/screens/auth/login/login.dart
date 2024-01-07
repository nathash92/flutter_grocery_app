import 'package:flutter/material.dart';
import 'package:flutter_grocery_app/screens/auth/login/widgets/login_form.dart';
import 'package:flutter_grocery_app/screens/auth/login/widgets/login_logo.dart';
import 'package:flutter_grocery_app/screens/auth/login/widgets/login_no_account.dart';
import 'package:flutter_grocery_app/screens/auth/login/widgets/login_welcome_note.dart';
import 'package:flutter_grocery_app/widgets/button/button.dart';
import 'package:flutter_grocery_app/widgets/form/input/input.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            LoginLogo(),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  LoginWelcomeNote(),
                  SizedBox(
                    height: 20.0,
                  ),
                  LoginForm(),
                  Row(
                    children: [
                      Spacer(),
                      AppButton(
                        label: Text('Forgot Password?'),
                        type: 'clear',
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  LoginNoAccount(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
