import 'dart:math';

import '../domain/answer_structure.dart';
import '../domain/generated_problem.dart';
import '../validator/problem_validator.dart';
import 'problem_generator.dart';

/// Generates famous-angle trigonometric expressions for structural input.
class TrigonometryGenerator implements ProblemGenerator {
  TrigonometryGenerator({required int seed}) : _random = Random(seed);

  final Random _random;
  static const List<int> _famousAngles = <int>[
    0,
    30,
    45,
    60,
    90,
    120,
    135,
    150,
    180,
  ];
  static const List<TrigFunction> _functions = TrigFunction.values;
  static const MathematicalProblemValidator _validator =
      MathematicalProblemValidator();

  @override
  GeneratedProblem generate() {
    // Retry is deliberately local: invalid tan(90°) style values are never
    // surfaced, while the validator remains reusable by future generators.
    while (true) {
      final function = _functions[_random.nextInt(_functions.length)];
      final angle = _famousAngles[_random.nextInt(_famousAngles.length)];
      final problem = GeneratedProblem(
        unit: 'trigonometry',
        questionText: '${function.name}($angle°) を専用ボタンで入力しなさい。',
        answer: TrigAnswer(
          func: function,
          angle: angle,
          unit: AngleUnit.deg,
        ),
      );
      if (_validator.isValid(problem)) {
        return problem;
      }
    }
  }
}
