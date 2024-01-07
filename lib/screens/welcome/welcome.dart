import 'package:flutter/material.dart';
import 'package:flutter_grocery_app/screens/welcome/welcome_slide_item.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final PageController _pageCtrl = PageController();

  bool _reachedEnd = false;

  @override
  void dispose() {
    _pageCtrl.dispose();
    super.dispose();
  }

  void onNext() {
    if (_reachedEnd) {
      GoRouter.of(context).go('/auth/login');
      return;
    }
    _pageCtrl.nextPage(
      duration: const Duration(milliseconds: 800),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageCtrl,
                onPageChanged: (int index) {
                  setState(() {
                    _reachedEnd = index >= 1;
                  });
                },
                children: const [
                  WelcomeSlideItem(title: 'Welcome to grocery app 1'),
                  WelcomeSlideItem(title: 'Welcome to grocery app 2'),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: onNext,
                child: Text(_reachedEnd ? 'Login' : 'Next'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
