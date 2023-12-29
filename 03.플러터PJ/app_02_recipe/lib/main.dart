import 'package:app_02_recipe/pages/recipe_page.dart';
import 'package:flutter/material.dart';
void main() { // 플러터의 출발 메서드!
  runApp(const MyApp());
}
// 초기호출 : StatelessWidget 상속-변경가능한 상태가 포함되지 않는 위젯
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // MaterialApp 위젯을 사용하여 디자인
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // 안드로이드 디자인 포멧
      // hide debug Mode
      debugShowCheckedModeBanner: false,
      // 앱 전체에 적용하는 속성값들 세팅
      theme: ThemeData(
        /**
         * font 적용
         * fontFamily 속성은 하나의 폰트 적용
         * fontFamilyFallback : [] 는 여러개의 리스트 적용
         */
        fontFamilyFallback: ['PatuaOne','Diphylleia',],
      ),
      home: RecipePageHome(),
    );
  }
}