import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipes/bloc/recipes_view_bloc.dart';
import 'package:recipes/controller/my_recipe_controller.dart';
import 'package:recipes/widgets/body_myreicipes.dart';

// import '../models/data.dart';

class MyRecipesScreen extends StatefulWidget {
  final recipeItem;
  final save;

  MyRecipesScreen({Key key, this.recipeItem, this.save}) : super(key: key);

  @override
  _MyRecipesScreenState createState() => _MyRecipesScreenState();
}

class _MyRecipesScreenState extends State<MyRecipesScreen> {
  RecipesViewBloc bloc = new RecipesViewBloc();

  List<Map< String,dynamic>> recipeItems = List<Map< String,dynamic>>();

  final MyRecipeController _myRecipeController = MyRecipeController();

  void readMyRecips() async {
    var myRecipes = await _myRecipeController.readData();

    List<Map< String,dynamic>> tmpRecipeList = List<Map< String,dynamic>>();
    myRecipes.forEach((recipe){
      Map< String,dynamic> myRecipe = {
        "id": recipe['id'],
        "title": recipe['title'],
        "image": recipe['image'],
        "nutrition": json.decode(recipe['nutrition']),
        "ingredients": json.decode(recipe['ingredients']),
        "steps": json.decode(recipe['steps']),
      }; 
      tmpRecipeList.add(myRecipe);
    });

    setState(() {

      recipeItems = tmpRecipeList;
    });
  }

  void refreshScreen(){
    return readMyRecips();
  }

  @override
  void initState() {
    super.initState();
    readMyRecips();
  }

  @override
  void dispose() {
    super.dispose();
    bloc.dispose();
  }
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF253440),
      appBar: AppBar(
        backgroundColor: Color(0xFF253440),
        centerTitle: true,
        title: Text('My Recipes'),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: recipeItems.length,
          itemBuilder: (BuildContext context, index) {
            return BodyMyRecipes(
              recipeItem: recipeItems[index],
              callBackRefresh: refreshScreen,
            );
          }),
    );
  }
}

