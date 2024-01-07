import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.label,
    this.isBlock = false,
    this.type = 'filled',
    this.size = 'md',
    required this.onPressed,
  });

  final Widget label;

  final bool isBlock;

  final String type;

  final String size;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    if (type == 'outline') {
      return OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          minimumSize: isBlock ? const Size.fromHeight(45) : null,
          textStyle: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        child: label,
      );
    } else if (type == 'clear') {
      return TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          minimumSize: isBlock ? const Size.fromHeight(45) : null,
          textStyle: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        child: label,
      );
    } else {
      return FilledButton(
        onPressed: onPressed,
        style: FilledButton.styleFrom(
          minimumSize: isBlock ? const Size.fromHeight(45) : null,
          textStyle: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        child: label,
      );
    }
  }
}
