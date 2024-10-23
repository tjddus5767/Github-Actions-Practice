import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0; // counter를 클래스 멤버 변수로 선언하여 상태 유지

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('CI/CD 테스트 앱'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('버튼 클릭 횟수: $counter'),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter++; // 버튼 클릭 시 counter 증가
                  });
                },
                child: Text('카운터 증가'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
