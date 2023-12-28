// 황금레시피 타이틀 클래스

import 'package:flutter/material.dart';

class RecipeTitle extends StatelessWidget {
  const RecipeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '황금 레시피👩‍🍳',
      style: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        color: Colors.amber.shade200,
      ),
    );
  }
}
