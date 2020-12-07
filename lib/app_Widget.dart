import 'package:flutter/material.dart';
import 'package:app_1/app_controller.dart';
import 'package:app_1/login_Page.dart';

import 'home_Page.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red,
          brightness: AppController.instance.isDarkTheme 
            ? Brightness.dark
            : Brightness.light,
        ),
        initialRoute: '/',
        routes: {
          '/':(context) => LoginPage(),
          '/home':(context) =>HomePage(),
          },
        );
      },
    );
  }
}