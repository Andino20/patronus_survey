import 'package:flutter/material.dart';
import 'package:patronus_survey/app_theme.dart';
import 'package:patronus_survey/survey/question_types/single_choice_model.dart';
import 'package:patronus_survey/survey/widgets/single_choice_question.dart';

void main() {
  runApp(const PatronusSurveyApp());
}

class PatronusSurveyApp extends StatelessWidget {
  const PatronusSurveyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Patronus Discovery',
      theme: AppTheme.lightTheme,
      home: Scaffold(
        body: Center(
          child: SingleChoiceQuestion(
            model: SingleChoiceModel(
              title: 'Welche Geschmacksrichtung magst du am liebsten?',
              choices: ['Süß', 'Sauer', 'Salzig', 'Bitter', 'Umami'],
            ),
          ),
        ),
      ),
    );
  }
}
