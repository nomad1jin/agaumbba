import 'package:flutter/material.dart';
git remote add origin https://github.com/nomad1jin/akko.git

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //appbar에서는 child사용 안됨,
        appBar: AppBar(
          backgroundColor: Color(0xffffffff),
          leading: IconButton(
            icon: Icon(Icons.notifications), // 왼쪽에 넣을 아이콘
            color:  Color(0xff473C33),
            onPressed: () {
              // 아이콘 클릭 시 실행될 코드
            },
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 120.0),
            child: Text(
              '아가엄빠', // 중앙에 표시될 텍스트
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff0b3a2d),
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: [
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '4세',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      '병아리 님',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff473C33),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 8), // 텍스트와 이미지 사이의 간격
                Image.asset(
                  'assets/images/chickface.png', // 이미지 넣기
                  width: 40,
                  height:40,
                ),
                SizedBox(width: 20), // 오른쪽 끝에 여백 추가
              ],
            ),
          ],
        ),


        body: Container(
          color: Color(0xffffffff),
          child: Center(
            child: Text(
              '아가엄빠',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff473C33),
                fontFamily: 'Pretendard',
              ),
            ),
          ),
        ),


        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.school, size: 28.0), // 아이콘 크기 조정
              label: '멘토링',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.attach_money, size: 28.0), // 아이콘 크기 조정
              label: '가계부',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 70.0, // 원형 크기를 키움
                height: 70.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff0b3a2d),
                ),
                child: Icon(Icons.home, color: Colors.white, size: 30.0), // 중앙 아이콘 크기 조정
              ),
              label: '', // 라벨을 비워서 아이콘만 표시
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite, size: 28.0), // 아이콘 크기 조정
              label: '지원 정책',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people, size: 28.0), // 아이콘 크기 조정
              label: '커뮤니티',
            ),
          ],
          currentIndex: 2, // 기본 선택된 탭 (홈)
          selectedItemColor: Color(0xff0b3a2d), // 선택된 항목의 색상
          unselectedItemColor: Color(0xffBDBDBD), // 선택되지 않은 항목의 색상
          selectedLabelStyle: TextStyle(
            fontFamily: 'Pretendard',
            color: Color(0xff0b3a2d),
          ),
          unselectedLabelStyle: TextStyle(
            fontFamily: 'Pretendard',
            color: Color(0xff2B2B2B),
          ),
          onTap: (index) {
            // 탭을 눌렀을 때 실행되는 코드
          },
        ),
      ),
    );
  }
}
