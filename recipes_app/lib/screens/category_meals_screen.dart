import 'package:flutter/material.dart';

import '../widgets/meal_item.dart';
import '../dummy-data.dart';

class CategoryMealsScreen extends StatelessWidget {
//Commented because when we use named Routes we can't pass arguments directly
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];

    final filteredMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('$categoryTitle Recipes'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomCenter,
        colors: [
          Colors.purple.withOpacity(0.8),
          Colors.black,
        ],
      )),
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(meal: filteredMeals[index]); 
          },
          itemCount: filteredMeals.length,
        ),
      ),
    );
  }
}
