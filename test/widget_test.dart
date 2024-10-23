import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test/main.dart';
//ddd

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // 앱을 빌드하고 화면에 표시
    await tester.pumpWidget(MyApp());

    // 처음 카운터가 0인지 확인
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // 버튼을 눌러서 카운터 증가
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // 카운터가 1로 증가했는지 확인
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
