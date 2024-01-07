import 'package:flutter/material.dart';
import 'package:flutter_grocery_app/screens/auth/widgets/auth_header_section.dart';
import 'package:flutter_grocery_app/screens/auth/widgets/auth_logo_section.dart';
import 'package:flutter_grocery_app/widgets/button/button.dart';
import 'package:flutter_grocery_app/widgets/form/input/input.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AuthLogoSection(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AuthHeaderSerction(
                    title: 'Forgot Password',
                    subTitle: 'Lorem Ipsum, sometimes referred to as,',
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const AppInput(
                    label: 'Mobile',
                    prefixIcon: Icons.phone_android_outlined,
                    maxLen: 10,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  AppButton(
                    label: const Text('Submit'),
                    onPressed: () {},
                    isBlock: true,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
