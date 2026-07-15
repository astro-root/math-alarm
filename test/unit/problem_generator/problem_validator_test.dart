import 'package:flutter_test/flutter_test.dart';
import 'package:math_alarm/features/problem_generator/domain/answer_structure.dart';
import 'package:math_alarm/features/problem_generator/domain/generated_problem.dart';
import 'package:math_alarm/features/problem_generator/validator/problem_validator.dart';

void main() {
  const validator = MathematicalProblemValidator();

  GeneratedProblem problemWith(AnswerStructure answer) => GeneratedProblem(
        unit: 'test',
        questionText: 'test',
        answer: answer,
      );

  test('rejects undefined tangent values', () {
    expect(
      validator.isValid(
        problemWith(
          const TrigAnswer(
            func: TrigFunction.tan,
            angle: 90,
            unit: AngleUnit.deg,
          ),
        ),
      ),
      isFalse,
    );
  });

  test('rejects logarithm values outside their domain', () {
    expect(
      validator.isValid(problemWith(const LogAnswer(base: 10, arg: 0))),
      isFalse,
    );
  });
}
