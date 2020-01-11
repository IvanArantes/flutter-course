import 'package:flutter/material.dart';
import 'package:recipes_app/screens/meal_detail_screen.dart';

import 'screens/categories_screen.dart';
import 'screens/category_meals_screen.dart';

//Created this class so I can make the main.dart file cleaner. This is imported on the routes definition.
class AppRoutes {
  static const String CATEGORY_MEALS = "/category-meals";
  static const String MEAL_DETAILS = "/meal-details";
  static const String HOME = "/";

  static get getRoutes {
    //routes need String, Function Map. And each function needs the context param.
    var routes = <String, WidgetBuilder>{
      CATEGORY_MEALS: (context) => CategoryMealsScreen(),
      MEAL_DETAILS: (context) => MealDetailScreen(),
      HOME: (context) => CategoriesScreen()
    };
    return routes;
  }
}
