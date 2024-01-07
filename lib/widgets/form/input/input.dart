import 'package:flutter/material.dart';

class AppInput extends StatelessWidget {
  const AppInput({
    super.key,
    required this.label,
    this.obscureText = false,
    this.prefixIcon,
    this.maxLen,
    this.showCounter = false,
  });

  final String label;

  final bool obscureText;

  final IconData? prefixIcon;

  final int? maxLen;

  final bool? showCounter;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        label: Text(label),
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        counterText: showCounter == true ? null : "",
      ),
      maxLength: maxLen,
    );
  }
}
