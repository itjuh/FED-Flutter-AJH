// 로고 SVG 위젯

// SVG를 출력하려면 추가 위젯을 설치해야함
// pub.dev 공식 위젯사이트로 가서
// 'flutter_svg'검색 후 ->Installing 탭에서 검색 명령어 확인
// flutter pub add flutter_svg
// 설치 확인은 pubspec.yaml 에서 아래와 같이 확인 됨
// dependencies:
// flutter_svg: ^2.0.9

import 'package:flutter/material.dart';
// svg를 읽기 위한 추가설치 위젯
import 'package:flutter_svg/flutter_svg.dart';

class Logo extends StatelessWidget {
  // 타이틀 값을 받기 위한 변수 선언
  final String title;
  // constructor parameter setting
  const Logo(this.title,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 1. svg 로고
        SvgPicture.asset(
          // svg 경로설정
          'assets/logo.svg',
          // 크기지정(비율이 있으면 한쪽만 씀)
          width: 70.0,
        ),
        // 2. 타이틀
        Text(
          title,
          // 글자 스타일
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
