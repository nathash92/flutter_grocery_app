import 'package:flutter/material.dart';
import 'package:flutter_grocery_app/screens/auth/register/widgets/register_form.dart';
import 'package:flutter_grocery_app/screens/auth/register/widgets/register_have_account.dart';
import 'package:flutter_grocery_app/screens/auth/widgets/auth_header_section.dart';
import 'package:flutter_grocery_app/screens/auth/widgets/auth_logo_section.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AuthLogoSection(),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AuthHeaderSerction(
                    title: 'Create Account',
                    subTitle: 'Lorem Ipsum, sometimes referred to as,',
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  RegisterForm(),
                  SizedBox(
                    height: 40.0,
                  ),
                  RegisterHaveAccount(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
