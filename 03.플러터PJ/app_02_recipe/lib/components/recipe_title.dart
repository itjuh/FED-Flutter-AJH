// 황금 황금레시피 타이틀 클래스

import 'package:flutter/material.dart';

class RecipeTitle extends StatelessWidget {
  const RecipeTitle({Key? key}) : super(key: key);

  // build 재정의
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:10.0,bottom: 0.0,),
      child: Center(
        child: Text(
              '황금 레시피',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 26, 26, 26),
              ),
            ),
      ),
    );
  }
}
