
import 'package:flutter/material.dart';
import 'screens/recipes_screen.dart';
void main() =>runApp(MyApp());
  
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '====Recipes====',
      home: RecipesScreen(),
    );
  }

}
