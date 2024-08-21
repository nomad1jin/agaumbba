import 'package:flutter/material.dart';
import 'home_screen.dart'; // HomeScreen을 가져옵니다.
import 'second_screen.dart'; // SecondScreen을 가져옵니다.

void main() {
  runApp(HomeScreen());
  runApp(SecondScreen());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', // 초기 경로를 '/'로 설정합니다.
      routes: {
        '/': (context) => HomeScreen(), // HomeScreen을 초기 화면으로 설정합니다.
        '/second': (context) => SecondScreen(), // SecondScreen으로 전환하는 경로 설정.
      },
    );
  }
}


//   @override
//   Widget build(BuildContext context) {
//     //아이폰은 Cupertino어쩌구() 이용가능
//     //자동완성은 ctrl+space
//     //Scaffold는 appBar:, body:, bottomNavigationBar:
//     return MaterialApp(
//       home: Scaffold(
//         // appBar: AppBar(
//         //   backgroundColor: Colors.blue, // AppBar의 배경색을 파란색으로 설정
//         //   title: Text('This is 아가엄빠'), // 원하는 텍스트나 위젯을 추가
//         // ),
//         body:
//             child: Text('정책알려줘', style: TextStyle(color:Color(0xff787676)),),
//           ),
//         ),
//         bottomNavigationBar: Container(
//           width:double.infinity, height:50,
//           decoration: BoxDecoration(
//             color:Colors.white,
//             border: Border.all(color:Colors.blueGrey, width:1.0,
//             ),
//           ),
//           child: Container(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly, //가로, 가운데정렬
//               //crossAxisAlignment: CrossAxisAlignment.center,//세로 정렬
//               children: [
//                 Icon(Icons.phone),
//                 Icon(Icons.message),
//                 Icon(Icons.contact_mail),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// bottomNavigationBar: BottomAppBar( child: Text('아가엄빠')),
// child: Container(width:50, height:50, color:Colors.blue),

