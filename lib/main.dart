import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    int counter = 0;
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
                    counter++;
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
