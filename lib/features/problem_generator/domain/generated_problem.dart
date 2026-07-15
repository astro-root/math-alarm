import 'answer_structure.dart';

/// A problem ready to be presented to the user.
class GeneratedProblem {
  const GeneratedProblem({
    required this.unit,
    required this.questionText,
    required this.answer,
  });

  final String unit;
  final String questionText;
  final AnswerStructure answer;
}
