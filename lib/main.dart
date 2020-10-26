import 'package:flutter/material.dart';
// import 'package:recipes/screens/myrecipes_screen.dart';
import 'package:recipes/screens/recipes_screen.dart';

// import 'screens/recipes_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '====Recipes====',
      home: RecipesScreen(),
      // home: MyRecipesScreen(),
    );
  }
}
