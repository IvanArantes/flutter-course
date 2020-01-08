import 'package:flutter/material.dart';
import 'dummy-data.dart';

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

    final filteredCategories = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('$categoryTitle Recipes'),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return null; //TODO:
        },
        itemCount: filteredCategories.length,
      ),
    );
  }
}
