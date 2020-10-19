// import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';
// import 'package:recipes/screens/recipes_screen.dart';
// import 'package:recipes/widgets/recipe_card.dart';

// import 'screens/recipes_detial.dart';
// import 'screens/recipes_detial.dart';
import 'screens/recipes_detial.dart';
import 'screens/recipes_screen.dart';


void main() =>runApp(MyApp());
  
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '====Recipes====',

      // home: RecipesScreen(),
       
      

      // home: RecipesScreen(),
      home: RecipesDetial(),
     
    );
  }

}
