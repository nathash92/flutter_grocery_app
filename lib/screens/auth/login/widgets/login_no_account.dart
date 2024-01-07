import 'package:flutter/material.dart';
import 'package:flutter_grocery_app/widgets/button/button.dart';

class LoginNoAccount extends StatelessWidget {
  const LoginNoAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            'Do not have an account?',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        AppButton(
          label: Text('Create Account'),
          type: 'outline',
          isBlock: true,
        )
      ],
    );
  }
}
