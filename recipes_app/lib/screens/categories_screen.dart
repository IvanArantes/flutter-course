import 'package:flutter/material.dart';
import '../widgets/category_item.dart';
import '../dummy-data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomCenter,
        colors: [
          Colors.purple.withOpacity(0.8),
          Colors.black,
        ],
      )),
      child: GridView(
        padding: const EdgeInsets.all(25),
        children: DUMMY_CATEGORIES.map((cat) => CategoryItem(cat)).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
