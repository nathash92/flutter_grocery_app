import 'package:flutter/material.dart';

class LoginWelcomeNote extends StatelessWidget {
  const LoginWelcomeNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome back',
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          'Lorem Ipsum, sometimes referred to as,',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
