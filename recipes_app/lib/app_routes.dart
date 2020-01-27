import 'package:flutter/material.dart';
import 'package:recipes_app/screens/filters_screen.dart';
import 'package:recipes_app/screens/meal_detail_screen.dart';
import 'package:recipes_app/screens/tabs_screen.dart';

import 'screens/category_meals_screen.dart';

//Created this class so I can make the main.dart file cleaner. This is imported on the routes definition.
class AppRoutes {
  static const String CATEGORY_MEALS_SCREEN = "/category-meals";
  static const String MEAL_DETAILS_SCREEN = "/meal-details";
  static const String FILTERS_SCREEN = "/filters";
  static const String HOME = "/";

  static get getRoutes {
    //routes need String, Function Map. And each function needs the context param.
    var routes = <String, WidgetBuilder>{
      CATEGORY_MEALS_SCREEN: (context) => CategoryMealsScreen(),
      MEAL_DETAILS_SCREEN: (context) => MealDetailScreen(),
      FILTERS_SCREEN: (context) => FilterScreen(),
      HOME: (context) => TabsScreen(),
    };
    return routes;
  }
}
