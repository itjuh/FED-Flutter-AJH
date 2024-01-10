// 로그인 페이지
import 'package:app_04_login/components/logo.dart';
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
          SizedBox(
            height: 100.0,
          ),
          Logo(
            'Dart',
          ),
          SizedBox(
            height: 50.0,
          ),
          // 임시 이동 버튼
          TextButton(
            onPressed: (){
              debugPrint('눌렸어');
              Navigator.pushNamed(context, '/home');
            },
            child: Text('Go to Home!!'),
            ),
        ],
      ),
    );
  }
}
