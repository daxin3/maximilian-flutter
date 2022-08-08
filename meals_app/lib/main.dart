import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/category_meals_screen.dart';
import 'package:flutter_complete_guide/screens/meal_detail_screen.dart';
import 'package:flutter_complete_guide/screens/testing_screen.dart';

import 'screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final testingContainer = Container(
    color: Colors.green,
    width: 100,
    height: 100,
  );

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
                    fontSize: 20,
                    fontFamily: 'RobotoCondensed',
                    fontWeight: FontWeight.w600),
              )),
      home: CategoriesScreen(),
      //home: TestingScreen(
      //  body: testingContainer,
      //),
      routes: {
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
    );
  }
}
