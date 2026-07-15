import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:math_alarm/core/theme/app_theme.dart';

void main() {
  test('problem theme uses a dark, high-contrast color scheme', () {
    expect(AppTheme.problem.brightness, Brightness.dark);
    expect(AppTheme.problem.colorScheme.onSurface, Colors.white);
  });
}
