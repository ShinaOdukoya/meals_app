// import 'dart:ui';

import 'package:flutter/material.dart';
import './category_meals_screen.dart';
import './categories_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        // textTheme: ThemeData.light().textTheme.copyWith(
        //       bodyText1: const TextStyle(
        //         color: Color.fromRGBO(20, 51, 51, 1),
        //       ),
        //       bodyText2: const TextStyle(
        //         color: Color.fromRGBO(20, 51, 51, 1),
        //       ),
        //       titleSmall: const TextStyle(
        //         fontSize: 24,
        //         fontFamily: 'RobotoCondensed',
        //       ),
        //     ),
        textTheme: const TextTheme(
          // titleSmall:
          //     const TextStyle(fontSize: 24, fontFamily: 'RobotoCondensed'),
          bodyText1: TextStyle(
            color: Color.fromRGBO(255, 254, 229, 1),
          ),
          // bodyText2: TextStyle(
          //   color: Color.fromRGBO(255, 254, 229, 1),
          // ),
        ),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
            .copyWith(secondary: Colors.amber),
      ),
      home: const CategoriesScreen(),
      routes: {'/category-meals': (ctx) => const CategoryMealsScreen()},
    );
  }
}
