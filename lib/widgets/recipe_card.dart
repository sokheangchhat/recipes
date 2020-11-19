import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipes/color/color.dart';
import 'package:recipes/controller/my_recipe_controller.dart';
import 'package:recipes/screens/recipes_detial.dart';
import 'package:toast/toast.dart';

class RecipesListCard extends StatelessWidget {
  final Map<String, dynamic> recipeItem;

  RecipesListCard({
    Key key,
    this.recipeItem,
  }) : super(key: key);

  final MyRecipeController _myRecipeController = MyRecipeController();

  void saveRecipe(BuildContext context) async{
    final Map<String, dynamic> myRecipeItem = {
      "title": recipeItem['title'],
      "image": recipeItem['image'],
      "nutrition": json.encode(recipeItem['nutrition']),
      "ingredients": json.encode(recipeItem['ingredients']),
      "steps": json.encode(recipeItem['steps'])
    };
    await _myRecipeController.inserData(myRecipeItem);
    Toast.show(recipeItem['title']+ "has been saved.", context,
      duration: Toast.LENGTH_SHORT,gravity: Toast.BOTTOM,
    );
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RecipesDetial(recipeItem),
          ),
        ),
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Colors.green,
        child: Row(
          children: <Widget>[
            Container(
              width: 150,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  // topRight: Radius.circular(0.0),
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
                image: DecorationImage(
                  image: AssetImage("${recipeItem['image']}"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 10.0, right: 5.0),
                child: Text(
                  "${recipeItem['title']}",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Roboto',
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
              ),
              padding: EdgeInsets.all(1),
              child: IconButton(
                icon: Icon(
                  Icons.description,
                  color: Colors.white,
                ),
                iconSize: 35,
                onPressed: () {
                  showDialog(
                    context: context,
                    child: AlertDialog(
                      title: Text("Recipes Dialog!"),
                      content: Text(
                          "Are you one to see more detial? Please press on picture to see detail. "),
                      actions: [
                        FlatButton(
                          child: Text("Close"),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  );
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecipesGridCard extends StatelessWidget {
  final recipeItem; //property

  RecipesGridCard({
    Key key,
    this.recipeItem,
  }) : super(key: key);

  final MyRecipeController _myRecipeController = MyRecipeController();

  void saveRecipe(BuildContext context) async {
    final Map<String , dynamic> myRecipeItem = {
      "title": recipeItem['title'],
      "image": recipeItem['image'],
      "nutrition": json.encode(recipeItem['nutrition']),
      "ingredients": json.encode(recipeItem['ingredients']),
      "steps": json.encode(recipeItem['steps'])
    };
    await _myRecipeController.inserData(myRecipeItem);
    Toast.show(recipeItem["title"]+ "has been saved.", context,
      duration: Toast.LENGTH_SHORT,gravity: Toast.BOTTOM);

    Navigator.pop(context);

  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RecipesDetial(recipeItem),
          ),
        ),
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Colors.green,
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 130,
              child: Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        topLeft: Radius.circular(10.0),
                      ),
                      image: DecorationImage(
                        image: AssetImage("${recipeItem['image']}"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  //this is a block of image that call from recipes_screen
                  Container(
                    decoration: BoxDecoration(
                        // color: Colors.lightGreen,
                      borderRadius: BorderRadius.circular(10)),
                      child: IconButton(
                        icon: Icon(
                          Icons.description,
                          color: AppColors.white,
                        ),
                        iconSize: 35,
                        onPressed: () {
                          showDialog(
                            context: context,
                            child: new AlertDialog(
                              title: const Text("Recipes Dialog!"),
                              content: 
                                Text("Are you one to see more detial? Please press on picture to see detail. "),
                              actions: [
                                new FlatButton(
                                  child: const Text("Close"),
                                onPressed: () => Navigator.pop(context),
                              ),
                            ],
                          ),
                        );
                      }),
                  ),
                ],
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 5.0, right: 5.0, bottom: 2, top: 2),
              child: Text(
                "${recipeItem['title']}",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'Roboto',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
