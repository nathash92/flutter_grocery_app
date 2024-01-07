import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthLogoSection extends StatelessWidget {
  const AuthLogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade900,
      height: 140,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          'Grocery APP',
          style: GoogleFonts.lemon(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
    ;
  }
}
