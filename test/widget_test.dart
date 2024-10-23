import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test/main.dart';
//ddd

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // 앱을 빌드하고 화면에 표시
    await tester.pumpWidget(MyApp());

    // 처음 카운터가 "버튼 클릭 횟수: 0"으로 표시되는지 확인
    expect(find.text('버튼 클릭 횟수: 0'), findsOneWidget);
    expect(find.text('버튼 클릭 횟수: 1'), findsNothing);

    // 버튼을 눌러서 카운터 증가
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    // 카운터가 "버튼 클릭 횟수: 1"로 증가했는지 확인
    expect(find.text('버튼 클릭 횟수: 0'), findsNothing);
    expect(find.text('버튼 클릭 횟수: 1'), findsOneWidget);
  });
}
