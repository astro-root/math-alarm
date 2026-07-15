import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:math_alarm/main.dart';

void main() {
  testWidgets('home page is displayed', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: MathAlarmApp()));
    await tester.pumpAndSettle();

    expect(find.text('Math Alarm'), findsOneWidget);
    expect(find.text('アラームはまだ設定されていません'), findsOneWidget);
  });
}
