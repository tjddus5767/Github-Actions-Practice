// test_driver/integration_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:test/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('네비게이션 통합 테스트', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // 첫 번째 화면에서 버튼을 눌러 두 번째 화면으로 이동
    final firstScreenButton = find.text('두 번째 화면으로 이동');
    expect(firstScreenButton, findsOneWidget);

    await tester.tap(firstScreenButton);
    await tester.pumpAndSettle();

    expect(find.text('두 번째 화면'), findsOneWidget);

    // 두 번째 화면이 제대로 표시되는지 확인
  });

  testWidgets('두 번째 화면에서 다시 버튼을 누르려는 잘못된 시도', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    await tester.tap(find.text("두 번째 화면으로 이동"));
    await tester.pumpAndSettle();

    expect(find.text('두 번째 화면'), findsOneWidget);

    expect(find.text('두 번째 화면으로 이동'), findsNothing);
  });
}
