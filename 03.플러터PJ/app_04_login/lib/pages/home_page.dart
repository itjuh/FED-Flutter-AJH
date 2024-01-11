// 홈페이지
import 'package:app_04_login/components/logo.dart';
import 'package:app_04_login/size.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: xlargeGap,
            ),
            Logo(
              'Dart',
            ),
            SizedBox(
              height:  xlargeGap,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text('Get started'),
            ),
          ],
        ),
      ),
    );
  }
}
