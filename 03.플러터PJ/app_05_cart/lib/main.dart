import 'package:app_05_cart/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 디버그 배너 숨김
      debugShowCheckedModeBanner: false,
      // 앱 테마 설정
      theme: theme(),
      // 전체 바디에 해당하는 home속성
      home: CartPage(),
    );
  }
}

// 페이지 구성 클래스
// CartPage클래스
class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. 앱바
      appBar: _buildCartAppBar(),
      // 2. 본문 바디
      body: Column(
        children: [],
      ),
    );
  }

  // appBar 구성 메서드 : _buildCartAppBar()
  AppBar _buildCartAppBar() {
    return AppBar(
      // 왼쪽 시작부분은 leading -> 이끄는 곳
      leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {}),
      // 실제 기능을 넣는 곳
      actions: [
        IconButton(
          icon: Icon(
            Icons.shopping_cart,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
} // CartPage widget //
