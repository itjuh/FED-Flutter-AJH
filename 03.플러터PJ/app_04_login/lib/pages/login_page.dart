// 로그인 페이지
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 리스트 뷰를 써야만 스크롤이 생성되어 
      // 하단 입력 키보드 생성 시 가리지 않음
      body: ListView(
        children: [
          // 로고 보이기
        ],
      ),
    );
  }
}
