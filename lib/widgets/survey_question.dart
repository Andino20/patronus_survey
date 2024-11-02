import 'package:flutter/material.dart';

class SurveyQuestion extends StatelessWidget {
  final String title;
  final Widget child;

  const SurveyQuestion({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                color: Theme.of(context).colorScheme.secondary,
              ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 50.0),
        child,
      ],
    );
  }
}
