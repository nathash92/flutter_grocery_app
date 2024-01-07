import 'package:flutter/material.dart';
import 'package:flutter_grocery_app/widgets/button/button.dart';
import 'package:flutter_grocery_app/widgets/form/input/input.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppInput(
          label: 'Mobile',
          prefixIcon: Icons.phone_android_outlined,
          maxLen: 10,
        ),
        SizedBox(
          height: 20.0,
        ),
        AppInput(
          label: 'Password',
          obscureText: true,
          prefixIcon: Icons.lock_outline,
        ),
        SizedBox(
          height: 20.0,
        ),
        AppButton(
          label: Text('Submit'),
          isBlock: true,
        ),
      ],
    );
  }
}
