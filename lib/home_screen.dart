import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Color(0xffaac06f), // 전체 배경색 설정
          child: Center(
            child: Text(
              '아가엄빠',
              style: TextStyle(
                fontSize: 40, // 텍스트 크기 설정
                color: Colors.white,
                fontFamily: 'Pretendard',// 텍스트 색상 설정
              ),
            ),
          ),
        ),
      ),
    );
  }
}


