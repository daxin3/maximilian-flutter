import 'package:flutter/material.dart';

import './categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'La més marrana',
      theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.green),
          primarySwatch: Colors.green,
          accentColor: Colors.greenAccent[700],
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                bodyText2: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                headline6: TextStyle(
                  fontSize: 24,
                  fontFamily: 'RobotoCondensed',
                ),
              )),
      home: CategoriesScreen(),
    );
  }
}
