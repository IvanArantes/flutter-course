import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:recipes_app/screens/categories_screen.dart';
import 'app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipes',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.black,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Relaway',
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            body2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            title: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
      ),
      initialRoute: '/',
      routes: AppRoutes.getRoutes,
      onGenerateRoute: (settings) { //when it goes to a not registered route
        print(settings.arguments);
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
      onUnknownRoute: (settings) { // executes for any unregistered named route, onUnknownRoute  executes if onGenerateRoute isn't defined or doesn't return a valid navigation action.
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
        },
    );
  }
}
