import 'package:flutter/material.dart';
import 'package:flutter_grocery_app/widgets/button/button.dart';
import 'package:go_router/go_router.dart';

class LoginNoAccount extends StatelessWidget {
  const LoginNoAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Align(
          alignment: Alignment.center,
          child: Text(
            'Do not have an account?',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        AppButton(
          label: const Text('Create Account'),
          type: 'outline',
          isBlock: true,
          onPressed: () {
            GoRouter.of(context).push('/auth/register');
          },
        )
      ],
    );
  }
}
