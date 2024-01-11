// 로그인 페이지
import 'package:app_04_login/components/custom_form.dart';
import 'package:app_04_login/components/custom_text_form_field.dart';
import 'package:app_04_login/components/logo.dart';
import 'package:app_04_login/size.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Scaffold(
        // 리스트 뷰를 써야만 스크롤이 생성되어
        // 하단 입력 키보드 생성 시 가리지 않음
        body: ListView(
          children: [
            // 로고 보이기
            SizedBox(
              height: xlargeGap,
            ),
            Logo(
              'Login',
            ),
            SizedBox(
              height: largeGap,
            ),
            // 입력폼 양식 위젯
            CustomForm(),
          ],
        ),
      ),
    );
  }
}
