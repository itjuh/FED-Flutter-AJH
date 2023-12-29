// 황금 레시피 페이지 메뉴 클래스
import 'package:flutter/material.dart';
// 쿠퍼티노 아이콘 사용
import 'package:cupertino_icons/cupertino_icons.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({Key? key}) : super(key: key);

  // 위젯을 리턴하는 빌드 메서드
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 5.0),
      child: Row(
        children: [
          // 박스형 메뉴 생성 메서드 호출
          _buildMenuItem(
            Icons.restaurant_menu_outlined,
            'All',
          ),
          Spacer(),
          _buildMenuItem(
            Icons.emoji_food_beverage,
            'Coffee',
          ),
          Spacer(),
          _buildMenuItem(
            Icons.fastfood,
            'Burger',
          ),
          Spacer(),
          _buildMenuItem(
            Icons.local_pizza,
            'Pizza',
          ),
        ],
      ),
    );
  }
}

// 메뉴 구성 위젯을 리턴하는 메서드
// 하위메서드 이므로 _로 시작하는 이름 사용
// 각 메뉴별 변경요소 파라미터로 받기
// 1.icon 2.text
Widget _buildMenuItem(IconData mIcon, String text) {
  // 박스를 구성하는 Container위젯
  // 박스는 크기를 가지므로 width,height속성 필수!!
  return Container(
      // 가로,세로 크기
      width: 70,
      height: 80,
      // 박스 세부옵션 설정
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          gradient: LinearGradient(
            // 색상종류
            colors: [
              Color.fromARGB(255, 238, 206, 105),
              Color.fromARGB(255, 193, 133, 19),
              Color.fromARGB(255, 253, 249, 201),
              Color.fromARGB(255, 238, 206, 105),
            ],
            // 종료점
            stops: [
              0.1,
              0.2,
              0.8,
              0.9,
            ],
            // 방향
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
      child: Column(
        // 박스 세로정렬 중앙
        mainAxisAlignment: MainAxisAlignment.center,
        // children 안쪽에는 구성요소를 보여줌
        children: [
          Icon(
            mIcon,
            color: Color.fromARGB(255, 255, 254, 219),
            // color: Colors.redAccent.shade400,
            size: 30.0,
          ),
          SizedBox(
            height: 3.0,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 92, 61, 11)),
          ),
        ],
      ));
}
