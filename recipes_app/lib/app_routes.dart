import 'package:flutter/material.dart';

import 'categories_screen.dart';
import 'category_meals_screen.dart';

class AppRoutes {
  static const String CATEGORY_MEALS = "/category-meals";
  static const String HOME = "/";

  static get getRoutes {
    var routes = <String, WidgetBuilder>{
      CATEGORY_MEALS: (context) => CategoryMealsScreen(),
      HOME: (context) => CategoriesScreen()
    };
    return routes;
  }
}
