import 'dart:math';

import '../domain/answer_structure.dart';
import '../domain/generated_problem.dart';
import 'problem_generator.dart';

/// Generates `ax + b = c` with an integer solution.
class LinearEquationGenerator implements ProblemGenerator {
  LinearEquationGenerator({required int seed}) : _random = Random(seed);

  final Random _random;

  @override
  GeneratedProblem generate() {
    final coefficient = _random.nextInt(9) + 1;
    final solution = _random.nextInt(21) - 10;
    final offset = _random.nextInt(21) - 10;
    final rightSide = coefficient * solution + offset;

    return GeneratedProblem(
      unit: 'linear_equation',
      questionText: '$coefficient x ${_signed(offset)} = $rightSide の x を求めなさい。',
      answer: NumberAnswer(value: solution.toDouble()),
    );
  }

  String _signed(int value) => value < 0 ? '- ${value.abs()}' : '+ $value';
}
