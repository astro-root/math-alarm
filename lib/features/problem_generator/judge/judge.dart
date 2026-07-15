import '../domain/answer_structure.dart';

/// Grades answers using the structural equality rules from the requirements.
class Judge {
  const Judge({this.numberEpsilon = 1e-9});

  final double numberEpsilon;

  bool isCorrect({
    required AnswerStructure expected,
    required AnswerStructure actual,
  }) {
    if (expected is NumberAnswer && actual is NumberAnswer) {
      return (expected.value - actual.value).abs() <= numberEpsilon;
    }

    return expected.runtimeType == actual.runtimeType && expected == actual;
  }
}
