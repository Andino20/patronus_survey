import 'package:patronus_survey/survey/question_types/question.dart';

class SingleChoiceModel extends Question {
  int _pickedAnswerIndex = 0;

  final List<String> choices;

  int get numberOfChoices => choices.length;

  set pickedAnswer(int index) {
    if (index < numberOfChoices && index >= 0) {
      _pickedAnswerIndex = index;
    }
  }

  int get pickedAnswer => _pickedAnswerIndex;

  SingleChoiceModel({required super.title, required this.choices});
}
