import 'package:flutter/material.dart';
import 'package:hudsonstudy/singupPage.dart';
import 'startPage.dart';
import 'loginPage.dart';
import 'singupPage.dart';
import 'homePage/homePage.dart';

class HudsonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hudson Study',
      home: LoginPage(), //기본 페이지는 homePage
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black),
        ),
      ),
      initialRoute: '/startPage',
      onGenerateRoute: _getRoute,
      routes: {
        '/startPage': (context) => StartPage(),
        '/homePage' : (context) => HomePage(),
        '/loginPage' : (context) => LoginPage(),
        '/singupPage' : (context) => SingupPage(),
      },
    );
  }

  Route<dynamic>? _getRoute(RouteSettings settings) {
    if (settings.name != '/startPage') {
      return null;
    }
    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => StartPage(),
      fullscreenDialog: true,
    );
  }
}

