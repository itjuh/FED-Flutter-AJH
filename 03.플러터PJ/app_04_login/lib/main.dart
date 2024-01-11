import 'package:app_04_login/pages/home_page.dart';
import 'package:app_04_login/pages/login_page.dart';
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
      // [ 테마 설정 : 공통버튼테마 ]
      theme: ThemeData(
        // 1. 텍스트 버튼 테마설정
        textButtonTheme: TextButtonThemeData(
          // 1-1. 버튼스타일 속성
          style: TextButton.styleFrom(
            // 배경색
            backgroundColor: Colors.black,
            // 글자색
            foregroundColor: Colors.white,
            // 모양 효과 > 둥근모서리
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            // 버튼 최소크기 설정
            minimumSize: Size(400, 60),
          ),
        ),
      ),
      // [[ 라우터 속성 셋업하기 ]]
      // 1. 기본셋팅법
      // '/라우터 주소' : (context) => 클래스생성자()
      // 다중 셋팅은 routes:{기본셋팅,기본세팅}
      // 2. 첫 페이지 라우터 설정()
      // initialRoute : '/라우터주소'
      // 3. 라우터 호출 이동 법 : 서로다른 페이지에서 호출
      // Navigator.pushNamed(context,'/라우터주소')
      initialRoute: '/login',
      routes: {
        '/home': (context) => Homepage(),
        '/login': (context) => LoginPage(),
      },
      // 라우터는 home속성 사용하지 않음
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
