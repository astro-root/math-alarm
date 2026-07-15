import 'dart:math';

import '../domain/answer_structure.dart';
import '../domain/generated_problem.dart';
import 'problem_generator.dart';

/// Generates `x² = n` and asks for its positive solution.
///
/// Its discriminant is `4n`; choosing both square and non-square [n] values
/// produces the required NumberAnswer/SqrtAnswer branches.
class QuadraticEquationGenerator implements ProblemGenerator {
  QuadraticEquationGenerator({required int seed}) : _random = Random(seed);

  final Random _random;

  static const List<int> _perfectSquares = <int>[1, 4, 9, 16, 25, 36];
  static const List<int> _nonSquares = <int>[2, 3, 5, 6, 7, 8, 10, 11, 12];

  @override
  GeneratedProblem generate() {
    final usePerfectSquare = _random.nextBool();
    final value = usePerfectSquare
        ? _perfectSquares[_random.nextInt(_perfectSquares.length)]
        : _nonSquares[_random.nextInt(_nonSquares.length)];

    return GeneratedProblem(
      unit: 'quadratic_equation',
      questionText: 'x² = $value を満たす正の x を求めなさい。',
      answer: usePerfectSquare
          ? NumberAnswer(value: sqrt(value).toDouble())
          : SqrtAnswer(arg: value),
    );
  }
}
