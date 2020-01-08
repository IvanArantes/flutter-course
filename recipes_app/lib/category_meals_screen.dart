import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {

//Commented because when we use named Routes we can't pass arguments directly
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text('$categoryTitle Recipes'),
      ),
      body: Center(
        child: Text('Recipes Teste Screen'),
      ),
    );
  }
}
