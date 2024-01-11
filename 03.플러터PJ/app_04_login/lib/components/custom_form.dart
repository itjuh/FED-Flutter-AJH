// 입력폼양식 위젯 //////////////

import 'package:app_04_login/components/custom_text_form_field.dart';
import 'package:app_04_login/size.dart';
import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
  // Form위젯에서 사용하는 전역상태관리 변수 만들기
  // 입력 폼 변경 시 여기에 반응하는 상태를 관리함!
  final _formKey = GlobalKey<FormState>();
  // const 형으로 만들면 변수를 반드시 추가해야 하므로
  // 위의 전역변수는 다른 용도이므로 const형을 지운다.
  CustomForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 플러터의 입력양식은 Form 위젯에서 관리함
    return Form(
      // 전역 key를 Form에 연결하여 해당 key로
      // Form상태를 관리한다! 필수!!
      key: _formKey,
      // 구성요소 속성: 수직방향 위젯사용
      child: Column(
        children: [
          // 1. 이메일 입력 양식(글자+입력폼)
          SizedBox(height: mediumGap),
          CustomTextFormField('Email'),
          // 2. 비밀번호 입력 양식(글자+입력폼)
          SizedBox(height: mediumGap),
          CustomTextFormField('Password'),
          // 3. TextButton 로그인 버튼
          SizedBox(height: largeGap),
          TextButton(
            onPressed: () {
              // vaildate 통과 시 유효성 검사 메서드로 속성 세팅
              if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, '/home');
              } // if //
              // debugPrint('눌렸어');
            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
