import '../domain/answer_structure.dart';
import '../domain/generated_problem.dart';

/// Validates generated problems. A caller can regenerate when this returns false.
abstract interface class ProblemValidator {
  bool isValid(GeneratedProblem problem);
}

/// Common safety checks for the answer forms currently supported by the app.
class MathematicalProblemValidator implements ProblemValidator {
  const MathematicalProblemValidator();

  @override
  bool isValid(GeneratedProblem problem) {
    final answer = problem.answer;
    if (answer is FractionAnswer) {
      return answer.denominator != 0;
    }
    if (answer is SqrtAnswer) {
      return answer.arg >= 0;
    }
    if (answer is TrigAnswer && answer.func == TrigFunction.tan) {
      return !_isUndefinedTangent(answer);
    }
    if (answer is LogAnswer) {
      final base = answer.base;
      return answer.arg > 0 &&
          (base == 'e' || (base is num && base > 0 && base != 1));
    }
    return true;
  }

  bool _isUndefinedTangent(TrigAnswer answer) {
    if (answer.unit == AngleUnit.deg) {
      return answer.angle % 180 == 90;
    }
    // The generator currently emits degree-based famous angles. Unknown radian
    // values are left to a unit-specific validator when such a generator exists.
    return false;
  }
}
