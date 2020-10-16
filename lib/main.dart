import 'package:flutter/material.dart';
import 'package:recipes/screens/recipes_screen.dart';
// import 'package:recipes/screens/search_screen.dart';

void main() =>runApp(MyApp());
  
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '====Recipes====',
      home: RecipesScreen(),
      // home: SearchScreen(), 
      
    );
  }
}