import 'package:flutter_test/flutter_test.dart';

import '../lib/validator.dart';

void main() {
  group('Login Validator Tests', () {
    test('사용자 이름과 비밀번호가 모두 비어있으면 false를 반환해야 합니다.', () {
      final result = validateLogin('', '');
      expect(result, false);
    });

    test('사용자 이름이 비어있으면 false를 반환해야 합니다.', () {
      final result = validateLogin('', 'password123');
      expect(result, false);
    });

    test('비밀번호가 비어있으면 false를 반환해야 합니다.', () {
      final result = validateLogin('username', '');
      expect(result, false);
    });

    test('비밀번호가 6자 미만이면 false를 반환해야 합니다.', () {
      final result = validateLogin('username', '12345');
      expect(result, false);
    });

    test('사용자 이름과 비밀번호가 모두 맞다면 true를 반환해야 합니다.', () {
      final result = validateLogin('username', 'password123');
      expect(result, true);
    });

    // 엣지 케이스 추가 테스트
    test('사용자 이름이 공백만 있으면 false를 반환해야 합니다.', () {
      final result = validateLogin('   ', 'password123');
      expect(result, false);
    });

    test('비밀번호가 공백만 있으면 false를 반환해야 합니다.', () {
      final result = validateLogin('username', '      ');
      expect(result, false);
    });

    test('비밀번호에 공백 포함 6자 이상이면 true를 반환해야 합니다.', () {
      final result = validateLogin('username', '  pass  ');
      expect(result, true);
    });
  });
}
