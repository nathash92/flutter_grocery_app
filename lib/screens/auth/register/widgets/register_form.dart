import 'package:flutter/material.dart';
import 'package:flutter_grocery_app/widgets/button/button.dart';
import 'package:flutter_grocery_app/widgets/form/input/input.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const AppInput(
          label: 'Mobile',
          prefixIcon: Icons.phone_android_outlined,
          maxLen: 10,
        ),
        const SizedBox(
          height: 20.0,
        ),
        const AppInput(
          label: 'Name',
          prefixIcon: Icons.person_outline,
          maxLen: 10,
        ),
        const SizedBox(
          height: 20.0,
        ),
        const AppInput(
          label: 'Password',
          obscureText: true,
          prefixIcon: Icons.lock_outline,
        ),
        const SizedBox(
          height: 20.0,
        ),
        const AppInput(
          label: 'Confirm Password',
          obscureText: true,
          prefixIcon: Icons.lock_outline,
        ),
        const SizedBox(
          height: 20.0,
        ),
        AppButton(
          label: const Text('Submit'),
          isBlock: true,
          onPressed: () {},
        ),
      ],
    );
  }
}
