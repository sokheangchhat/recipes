import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipes/bloc/recipes_view_bloc.dart';
import 'package:recipes/models/data.dart';
import 'package:recipes/widgets/body_myreicipes.dart';

class MyRecipesScreen extends StatefulWidget {
  @override
  _MyRecipesScreenState createState() => _MyRecipesScreenState();
}

class _MyRecipesScreenState extends State<MyRecipesScreen> {
  RecipesViewBloc bloc = new RecipesViewBloc();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    bloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 37, 52, 64),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 37, 52, 64),
        centerTitle: true,
        title: Text('My Recipes'),
      ),
      body: Column(
        children: <Widget>[
          _myRecipesScreen(),
        ],
      ),
    );
  }
}

Widget _myRecipesScreen() {
  return Expanded(
    child: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: recipes.length,
        itemBuilder: (BuildContext context, index) {
          return BodyMyRecipes(
            recipeItem: recipes[index],
          );
        }),
  );
}
