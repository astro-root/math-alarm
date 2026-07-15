/// A symbolic representation of an answer entered through the answer keypad.
///
/// Keeping answers structured prevents an approximation such as `1.414...`
/// from being accepted for the symbolic answer `√2`.
sealed class AnswerStructure {
  const AnswerStructure();
}

class NumberAnswer extends AnswerStructure {
  const NumberAnswer({required this.value});

  final double value;

  @override
  bool operator ==(Object other) =>
      other is NumberAnswer && other.value == value;

  @override
  int get hashCode => Object.hash(NumberAnswer, value);
}

class FractionAnswer extends AnswerStructure {
  const FractionAnswer({required this.numerator, required this.denominator})
      : assert(denominator != 0);

  final int numerator;
  final int denominator;

  @override
  bool operator ==(Object other) =>
      other is FractionAnswer &&
      other.numerator == numerator &&
      other.denominator == denominator;

  @override
  int get hashCode => Object.hash(FractionAnswer, numerator, denominator);
}

enum TrigFunction { sin, cos, tan }

enum AngleUnit { deg, rad }

class SqrtAnswer extends AnswerStructure {
  const SqrtAnswer({required this.arg}) : assert(arg >= 0);

  final int arg;

  @override
  bool operator ==(Object other) => other is SqrtAnswer && other.arg == arg;

  @override
  int get hashCode => Object.hash(SqrtAnswer, arg);
}

class TrigAnswer extends AnswerStructure {
  const TrigAnswer({
    required this.func,
    required this.angle,
    required this.unit,
  });

  final TrigFunction func;
  final num angle;
  final AngleUnit unit;

  @override
  bool operator ==(Object other) =>
      other is TrigAnswer &&
      other.func == func &&
      other.angle == angle &&
      other.unit == unit;

  @override
  int get hashCode => Object.hash(TrigAnswer, func, angle, unit);
}

class LogAnswer extends AnswerStructure {
  /// [base] is either a numeric base or the string `e` for a natural log.
  const LogAnswer({required this.base, required this.arg})
      : assert(base is num || base == 'e');

  final Object base;
  final num arg;

  @override
  bool operator ==(Object other) =>
      other is LogAnswer && other.base == base && other.arg == arg;

  @override
  int get hashCode => Object.hash(LogAnswer, base, arg);
}

class ConstantMultipleAnswer extends AnswerStructure {
  /// [constant] is either `pi` or `e`.
  const ConstantMultipleAnswer({required this.constant, required this.coeff})
      : assert(constant == 'pi' || constant == 'e');

  final String constant;
  final num coeff;

  @override
  bool operator ==(Object other) =>
      other is ConstantMultipleAnswer &&
      other.constant == constant &&
      other.coeff == coeff;

  @override
  int get hashCode => Object.hash(ConstantMultipleAnswer, constant, coeff);
}
