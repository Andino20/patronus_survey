import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  final double width;
  final double height;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width = 200,
    this.height = 60,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.deepPurple,
            width: 2.0
          ),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.deepPurple.withValues(alpha: 0.5),
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: const Offset(0, 0),
            ),
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.2),
              blurRadius: 3,
              offset: const Offset(0, 0)
            )
          ]
        ),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
              color: Theme.of(context).colorScheme.secondary
            )
          ),
        ),
      ),
    );
  }
}
