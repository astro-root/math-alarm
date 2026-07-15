import 'package:flutter_test/flutter_test.dart';
import 'package:math_alarm/features/problem_generator/domain/answer_structure.dart';
import 'package:math_alarm/features/problem_generator/generators/circle_generator.dart';
import 'package:math_alarm/features/problem_generator/generators/linear_equation_generator.dart';
import 'package:math_alarm/features/problem_generator/generators/quadratic_equation_generator.dart';
import 'package:math_alarm/features/problem_generator/generators/trigonometry_generator.dart';

void main() {
  group('generators are reproducible with a seed', () {
    test('linear equations', () {
      final first = LinearEquationGenerator(seed: 42).generate();
      final second = LinearEquationGenerator(seed: 42).generate();

      expect(second.questionText, first.questionText);
      expect(second.answer, first.answer);
    });

    test('circle questions', () {
      final first = CircleGenerator(seed: 42).generate();
      final second = CircleGenerator(seed: 42).generate();

      expect(second.questionText, first.questionText);
      expect(second.answer, first.answer);
    });

    test('quadratic equations', () {
      final first = QuadraticEquationGenerator(seed: 42).generate();
      final second = QuadraticEquationGenerator(seed: 42).generate();

      expect(second.questionText, first.questionText);
      expect(second.answer, first.answer);
    });

    test('trigonometry questions', () {
      final first = TrigonometryGenerator(seed: 42).generate();
      final second = TrigonometryGenerator(seed: 42).generate();

      expect(second.questionText, first.questionText);
      expect(second.answer, first.answer);
    });
  });

  test('quadratic generator emits both number and square-root answers', () {
    final generator = QuadraticEquationGenerator(seed: 1);
    final answers = <Type>{
      for (var index = 0; index < 100; index++) generator.generate().answer.runtimeType,
    };

    expect(answers, containsAll(<Type>[NumberAnswer, SqrtAnswer]));
  });

  test('trigonometry generator excludes undefined tangent values', () {
    final generator = TrigonometryGenerator(seed: 7);

    for (var index = 0; index < 100; index++) {
      final answer = generator.generate().answer as TrigAnswer;
      expect(
        answer.func == TrigFunction.tan && answer.angle % 180 == 90,
        isFalse,
      );
    }
  });
}
