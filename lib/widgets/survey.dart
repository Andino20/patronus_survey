import 'package:flutter/material.dart';
import 'package:patronus_survey/widgets/survey_question.dart';

class Survey extends StatefulWidget {
  final List<SurveyQuestion> questions;

  const Survey({super.key, required this.questions});

  @override
  State<Survey> createState() => _SurveyState();
}

class _SurveyState extends State<Survey> {
  int _currentQuestion = 0;

  void nextPage() {
    if (_currentQuestion + 1 < widget.questions.length) {
      _currentQuestion++;
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => widget.questions[_currentQuestion],
        ),
      );
    }
  }

  void previousPage() {
    if (_currentQuestion - 1 > 0) {
      _currentQuestion--;
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: previousPage,
          icon: const Icon(
            Icons.arrow_left_rounded,
            size: 64.0,
          ),
        ),
        Expanded(
          child: widget.questions[_currentQuestion],
        ),
        IconButton(
          onPressed: nextPage,
          icon: const Icon(
            Icons.arrow_right_rounded,
            size: 64.0,
          ),
        ),
      ],
    );
  }
}
