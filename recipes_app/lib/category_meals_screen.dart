import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {


  final String categoryId;
  final String categoryTitle;

  CategoryMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
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
