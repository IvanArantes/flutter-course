import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key key}) : super(key: key);

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
      child: Center(
        child: Text('Test Favorites', style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
