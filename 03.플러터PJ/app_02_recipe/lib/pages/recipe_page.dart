// 황금 레시피 페이지 홈 클래스
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// 쿠퍼티노 아이콘 사용
import 'package:cupertino_icons/cupertino_icons.dart';
// 레시피 / 메뉴 / 리스트아이템 components
import 'package:app_02_recipe/components/recipe_title.dart';
import 'package:app_02_recipe/components/recipe_menu.dart';
import 'package:app_02_recipe/components/recipe_list_item.dart';

class RecipePageHome extends StatelessWidget {
  // constructor method는 key를 받아서 부모 속성을 셋팅함
  // 키는 이미 만들어진 부모위젯에서 받는 기본값
  // 이 값은 우리가 넘겨주지 않아도 셋팅은 되어야 함
  const RecipePageHome({Key? key}) : super(key: key);
  // Key? key -> Key클래스 형 변수 key가 null이여도 그 값을 null처리하지 않고
  // 문자열 'null'로 처리해줌 ->>> 널세이프티(null safety) '?'사용

  // build메서드 재정의
  @override
  Widget build(BuildContext context) {
    // 가장 바깥쪽 레이아웃 위젯
    return Scaffold(
      // 1. 전체 배경색 설정하기
      backgroundColor: Colors.white,
      // 2. appbar class 호출하기
      appBar: _buildRecipeAppBar(),
      // 3. body 구현하기
      body: Padding(
        // 상하/좌우 대칭 여백 패딩설정(symmetric : 대칭적인)
        // vertical:0.0, horizontal:0.0
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        // Column 위젯은 스크롤표시 안됨
        // ListView 위젯은 스크롤바 가능
        child: ListView(
          children: [
            // 1. 레시피 페이지 전체 타이틀
            RecipeTitle(),
            // 2. 레시피 페이지 메뉴
            RecipeMenu(),
            // 3. 레시피 이미지
            RecipeListItem('coffee','커피 레시피'),
            RecipeListItem('burger','수제버거 레시피'),
            RecipeListItem('pizza','피자 레시피'),
          ],
        ),
      )
      // body: Padding(
      //   padding: EdgeInsets.all(30.0),
      //   child: RecipeTitle(),
      // ),
    );
  }
}

// make appbar class ////////
// return 형은 Appbar
// 앱바 메서드의 이름은 주로 (언더바_)로 시작함
AppBar _buildRecipeAppBar() {
  return AppBar(
    // 앱바 배경색
    backgroundColor: Color.fromARGB(255, 209, 209, 209),
    // elevation 속성 : 앱바그림자 효과 조정속성 double형 : 높이(바닥에서부터 높이감)
    elevation: 1.0,
    // actions 속성 : 앱바 컨텐츠 파트[리스트형]
    actions: [
      // Icon widget
      Icon(
        // 아이콘 옵션 중 쿠퍼티노가 유명함
        // 주의: 쿠퍼티노 앱 상단 import 추가
        CupertinoIcons.search,
        color: Colors.blueGrey.shade700,
        size: 30.0,
      ),
      SizedBox(
        width: 5.0,
      ),
      Icon(
        // 아이콘 옵션 중 쿠퍼티노가 유명함
        // 주의: 쿠퍼티노 앱 상단 import 추가
        CupertinoIcons.heart,
        color: Colors.red.shade600,
        size: 30.0,
      ),
      SizedBox(
        width: 5.0,
      ),
    ],
  );
}
// 앱바는 앱 최상단 구역을 차지함
// 구성요소
// 1. leading - 앱바 상단 왼쪽 끝 파트
// 2. title  - 앱바 타이틀 파트
// 3. actions - 앱바 컨텐츠 파트
// 4. flexibleSpace - 앱바 하단 위 파트
// ->> SafeArea Widget에서 이 공백을 자동 조정함!
// 5. bottom - 앱바 하단 파트
// 앱바는 상단 중간 하단으로 구성되어있음. flexibleSpace는 위 bottom은 하단파트