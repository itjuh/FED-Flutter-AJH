import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
/*
  [ 로그인 앱 전체구성 ]
  1. 메인 출발 ( 추가 사이즈 지정 size.dart )
    ->>> main.dart에 라우터 속성 추가
  2. 페이지구성 : 2개
   pages / home_page.dart : 홈페이지
   pages / login_page.dart : 로그인 페이지
  3. 컴포넌트 구성 : 3개
   component / logo.dart : SVG로고
   component / custom_form.dart : Form 위젯
   component / custom_text_form_field.dart : Form 요소 위젯
*/
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // 라우터는 home속성 사용하지 않음
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
