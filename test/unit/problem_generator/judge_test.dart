import 'package:flutter_test/flutter_test.dart';
import 'package:math_alarm/features/problem_generator/domain/answer_structure.dart';
import 'package:math_alarm/features/problem_generator/judge/judge.dart';

void main() {
  const judge = Judge();

  test('does not accept a numeric approximation for a square-root answer', () {
    expect(
      judge.isCorrect(
        expected: const SqrtAnswer(arg: 2),
        actual: const NumberAnswer(value: 1.41421356),
      ),
      isFalse,
    );
  });

  test('rejects different AnswerStructure types even when values match', () {
    expect(
      judge.isCorrect(
        expected: const FractionAnswer(numerator: 1, denominator: 2),
        actual: const NumberAnswer(value: 0.5),
      ),
      isFalse,
    );
  });

  test('allows only a tiny floating-point tolerance for number answers', () {
    expect(
      judge.isCorrect(
        expected: const NumberAnswer(value: 3.0),
        actual: const NumberAnswer(value: 3.0 + 1e-10),
      ),
      isTrue,
    );
    expect(
      judge.isCorrect(
        expected: const NumberAnswer(value: 3.0),
        actual: const NumberAnswer(value: 3.0 + 1e-6),
      ),
      isFalse,
    );
  });
}
