import 'dart:io';

double calculateComboDamage(int N, int M, List<int> damages) {
  // 아래 코드를 작성하세요.
  double damage = 0;

  for (int i = 0; i < M; i++) {
    damage = damages[i] + damage;
  }
  // M번째 공격 이후부터 보정이 들어감
  List<double> multipliers = [0.7, 0.5, 0.4, 0.3];

  for (int i = M; i < N; i++) {
    int idx = i - M;
    if (idx < multipliers.length) {
      damage += damages[i] * multipliers[idx];
    } else {
      damage += damages[i] * 0.3;
    }
  }
  return damage;
}

void main() {
  // 입력 받기
  List<String> input1 = stdin.readLineSync()!.split(' ');
  int N = int.parse(input1[0]);
  int M = int.parse(input1[1]);

  List<String> input2 = stdin.readLineSync()!.split(' ');
  List<int> damages = input2.map(int.parse).toList();

  // 콤보 데미지 계산
  double comboDamage = calculateComboDamage(N, M, damages);

  // 결과 출력 (소수 첫째 자리까지 반올림하여 출력)
  print(comboDamage.toStringAsFixed(1));
}
