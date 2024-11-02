import 'package:flutter/material.dart';
import 'package:patronus_survey/survey/question_types/single_choice_model.dart';

class SingleChoiceQuestion extends StatelessWidget {
  final SingleChoiceModel model;

  const SingleChoiceQuestion({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          model.title,
          style: textTheme.displayLarge!.copyWith(color: colorScheme.secondary),
        ),
        const SizedBox(height: 50.0),
        for (var i = 0; i < model.numberOfChoices; i++)
          ElevatedButton(
            onPressed: () => model.pickedAnswer = i,
            child: Text(
              model.choices[i],
              style: textTheme.displayMedium!
                  .copyWith(color: colorScheme.secondary),
            ),
          )
      ],
    );
  }
}
