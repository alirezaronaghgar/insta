import 'package:flutter/material.dart';
import 'package:flutter_instagram/my_home_page.dart';

void main() => runApp(new MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      return new MaterialApp(
        title: 'اینستاگرام',
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
          fontFamily: 'Vazir',
          primaryColor: Colors.black,
          primaryIconTheme: IconThemeData( color: Colors.black),
          primaryTextTheme: TextTheme(title: TextStyle(color: Colors.black)),
        ),
        home : new Directionality(textDirection: TextDirection.rtl , child: MyHomePages())
      );
  }

}
