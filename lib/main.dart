import 'package:flutter/material.dart';
import 'package:flutter_naver_login/flutter_naver_login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Material(
        child: Center(
          child: RaisedButton(
            elevation: 0,
            onPressed: () async {
              NaverLoginResult res = await FlutterNaverLogin.logIn();
              print(res);
            },
            child: Text('Naver Login'),
          ),
        ),
      ),
    );
  }
}
