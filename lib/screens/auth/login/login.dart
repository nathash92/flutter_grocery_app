import 'package:flutter/material.dart';
import 'package:flutter_grocery_app/screens/auth/login/widgets/login_form.dart';
import 'package:flutter_grocery_app/screens/auth/login/widgets/login_no_account.dart';
import 'package:flutter_grocery_app/screens/auth/widgets/auth_header_section.dart';
import 'package:flutter_grocery_app/screens/auth/widgets/auth_logo_section.dart';
import 'package:flutter_grocery_app/widgets/button/button.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AuthLogoSection(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10.0,
                  ),
                  const AuthHeaderSerction(
                    title: 'Welcome Back',
                    subTitle: 'Lorem Ipsum, sometimes referred to as,',
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const LoginForm(),
                  Row(
                    children: [
                      const Spacer(),
                      AppButton(
                        label: const Text('Forgot Password?'),
                        type: 'clear',
                        onPressed: () {
                          context.push('/auth/forgot-password');
                        },
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  const LoginNoAccount(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
