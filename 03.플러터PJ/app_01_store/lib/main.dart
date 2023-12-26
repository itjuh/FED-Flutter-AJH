import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // 최상위 위젯
    return MaterialApp(
      // home에 작성하는 위젯이 실제 이 앱이 표시하는 위젯
      home: StorePage(), //이 클래스를 아래쪽에 생성
      debugShowCheckedModeBanner: false,
    );
  }
}

// StatelessWidget Widget : 비상태위젯 단축키 stl/StorePage 클래스
class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // 앱기본 방향 시작은 세로방향 Column에서 시작
        // Column안에 Row를 포함한다.
        child: Column(
          // children 속성은 컬럼 하위요소들임!
          children: [
            /*
            [ Padding 위젯 ]
            padding: EdgeInsets.all(4방향전체),
            padding: EdgeInsets.only(left/top/right/bottom특정방향만),
            padding: EdgeInsets.symmetric(수직/수평중),
           */
            // Row - 가로방향 위젯요소
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text(
                    'Woman',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.orangeAccent),
                  ),
                  Icon(
                    Icons.woman,
                    color: Colors.orangeAccent,
                  ),
                  Spacer(),
                  Text(
                    'Kids',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.blueAccent),
                  ),
                  Icon(
                    Icons.child_care,
                    // Icons.child_friendly,
                    color: Colors.blueAccent,
                  ),
                  Spacer(),
                  Text(
                    'Shoes',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Color.fromARGB(255, 209, 46, 46)),
                  ),
                  Icon(Icons.shop_2, color: Color.fromARGB(255, 209, 46, 46)),
                  Spacer(),
                  Text(
                    'Bag',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.deepPurpleAccent),
                  ),
                  Icon(Icons.shopping_bag, color: Colors.deepPurpleAccent),
                ],
              ),
            ),
            // 이미지 추가하기(padding으로 싼 첫줄 아래에 이미지 추가)
            // -> pubspec.yaml파일에 경로 assets/로 설정 됨
            // Expanded 위젯 - flex속성이 있어서 등분할 함
            Expanded(
              child: Image.asset('bag.jpeg', fit: BoxFit.cover),
            ),
            SizedBox(height:5.0,),
            Expanded(
              child: Image.asset('cloth.jpeg', fit: BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }
}
