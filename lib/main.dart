import 'package:flutter/material.dart';
import 'package:mobileappweek1/config/constant.dart';

import 'screen/home.dart';
import 'screen/index.dart';
import 'screen/login.dart';
import 'screen/register.dart';
import 'screen/dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Index(),
      routes: {
        'Login': (context) => Login(),
        'Register': (context) => Register(),
        'Dashboard': (context) => Dashboard(),
      },
      theme: ThemeData(
        primaryColor: pColor,
        secondaryHeaderColor: sColor,
      ),
    );
  }
}
