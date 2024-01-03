// 프로파일 드로워 위젯 : 오른쪽에서 들어오는 사이드 박스
import 'package:flutter/material.dart';

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 사이드 박스는 Container로 만들어 준다
    return Container(
      width: 200,
      // double.infinity 보이는 높이 채우기
      height: double.infinity,
      // 배경색
      color: Colors.lightGreen.shade200,
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'Profile😀',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Count📑',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Posts📌',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Photo📷',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
