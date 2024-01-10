// 황금 레시피 리스트 아이템 클래스

import 'package:flutter/material.dart';

// 두개의 값을 전달받아서 처리한다.
// 1. 이미지 이름 2. 타이틀
class RecipeListItem extends StatelessWidget {
  // 클래스 멤버 속성 만들기
  final String imageName;
  final String title;

  // 부모에게 key값만 전달하면 됨
  const RecipeListItem(this.imageName, this.title, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 비율설정 위젯 - AspectRatio
        AspectRatio(
          aspectRatio: 2 / 1,
          child:
              // 사각 잘라내기 - ClipRRect
              ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            // 1. 이미지 :parameter- imageName 사용
            child: Image.asset(
              'assets/images/$imageName.jpeg',
              // 이미지 확장 채우기
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        // 2. 타이틀 :parameter- title 사용
        Row(
          children: [
            Text(
              '📋',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 3.0,
        ),
        // 레시피 소개글
        Text(
          '당신은 당신이 직접 만든 $title를 가지고 계신가요? 만약 없다면 여기 쉽고 훌륭한 $title를 보고 따라해보세요! 틀림없이 좋은 결과를 만나실 겁니다!',
          style: TextStyle(
            color: Colors.black,
            fontSize: 15.0,
            wordSpacing: 2.0,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}
