// 입력폼 양식 위젯 : 글자 + 입력폼 요소 ////////

import 'package:app_04_login/size.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  // 텍스트를 입력받아 사용하기
  final String text;
  const CustomTextFormField(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 필드 설명과 입력양식폼은 수직으로 배치
    return Column(
      // 크로스 축 정렬 변경
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 1. 필드설명
        Text(text),
        SizedBox(height: smallGap),
        // 2. 텍스트 입력 폼 양식
        TextFormField(
          // 2-1. 유효성 검사 셋팅(출력메세지)
          // 값!(느낌표)는 '절대 null이 아님'을 의미
          validator: (value) =>
              value!.isEmpty ? 'Please enter some text' : null,
          // 2-2. 비밀번호의 경우 글자***처리하기
          obscureText: text == 'Password' ? true : false,
          // 2-3. 입력폼 양식 꾸미기
          decoration: InputDecoration(
            // 터치시/에러시/에러후터치시 상태에 대한 기본디자인은
            // 밑줄형으로 되어있으므로 덮어써야 원하는 디자인이 적용 됨
            // 입력내용 힌트 텍스트 Placeholder
            hintText: 'Enter $text',
            // 2-3-2. 기본 테두리 디자인 설정
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            // 2-3-3. 터치 시(포커스) 디자인
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(
                color: Colors.blue,
                width: 3.0,
              ),
            ),
            // 2-3-4. 에러발생 시 TextFormField 디자인
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(
                color: Colors.red,
                width: 3.0,
              ),
            ),
            // 2-3-5. 에러발생 후
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(
                color: Colors.purple,
                width: 5.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
