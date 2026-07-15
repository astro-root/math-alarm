import 'dart:math';

import '../domain/answer_structure.dart';
import '../domain/generated_problem.dart';
import 'problem_generator.dart';

/// Generates circle-area and circumference questions expressed as a π multiple.
class CircleGenerator implements ProblemGenerator {
  CircleGenerator({required int seed}) : _random = Random(seed);

  final Random _random;

  @override
  GeneratedProblem generate() {
    final radius = _random.nextInt(12) + 1;
    final isArea = _random.nextBool();
    final coefficient = isArea ? radius * radius : 2 * radius;
    final kind = isArea ? '面積' : '円周';

    return GeneratedProblem(
      unit: 'circle',
      questionText: '半径 $radius の円の$kindを π を用いて表しなさい。',
      answer: ConstantMultipleAnswer(constant: 'pi', coeff: coefficient),
    );
  }
}
