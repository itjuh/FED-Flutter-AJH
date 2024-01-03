// 프로파일 카운트 정보 : 컨텐츠 카운트 정보

import 'package:flutter/material.dart';

class ProfileCountInfo extends StatelessWidget {
  const ProfileCountInfo({Key? key}) : super(key: key);

  // 빌드 재정의!
  @override
  Widget build(BuildContext context) {
    return Row(
      // 컨텐츠 주변을 일정한 공간으로 채우기
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildInfo('100', 'Posts'), // 정보위젯 _buildInfo()
        _buildLine(), // 라인위젯 _buildLine()
        _buildInfo('70', 'Likes'), // 정보위젯 _buildInfo()
        _buildLine(), // 라인위젯 _buildLine()
        _buildInfo('20', 'Share'), // 정보위젯 _buildInfo()
      ],
    );
  }
}

// 정보위젯 만들기
Widget _buildInfo(String count, String title) {
  return Column(
    children: [
      Text(
        count,
        style: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        title,
        style: TextStyle(
          fontSize: 17.0,
        ),
      ),
    ],
  );
}

Widget _buildLine() {
  return Container(
    width: 2,
    height: 35,
    color: Colors.blue,
  );
}
