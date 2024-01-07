import 'package:flutter/material.dart';
import 'package:flutter_grocery_app/screens/auth/login/login.dart';
import 'package:flutter_grocery_app/screens/auth/register/register.dart';
import 'package:flutter_grocery_app/screens/welcome/welcome.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

final GoRouter _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => WelcomeScreen(),
    ),
    GoRoute(
      path: '/auth/login',
      builder: (BuildContext context, GoRouterState state) => LoginScreen(),
    ),
    GoRoute(
      path: '/auth/register',
      builder: (BuildContext context, GoRouterState state) => RegisterScreen(),
    )
  ],
);

void main() {
  GoRouter.optionURLReflectsImperativeAPIs = true;
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green.shade900,
        ),
        textTheme: GoogleFonts.nunitoSansTextTheme(),
      ),
      routerConfig: _router,
    );
  }
}
