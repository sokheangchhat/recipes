import 'package:flutter/material.dart';
import 'package:recipes/controller/my_recipe_controller.dart';
import 'package:recipes/screens/recipes_detial.dart';
import 'package:toast/toast.dart';

class BodyMyRecipes extends StatelessWidget {
  final Map<String ,dynamic> recipeItem;
  final callBackRefresh;

  BodyMyRecipes({Key key, this.recipeItem,this.callBackRefresh});

  final MyRecipeController _myRecipeController = MyRecipeController();
  void deleteMyRecipe(BuildContext context ) async {
    await _myRecipeController.deleteData(recipeItem['id']);
    Toast.show(
      recipeItem['title'] +"has been deleted.", 
      context, duration: Toast.LENGTH_SHORT,
      gravity: Toast.BOTTOM);
    callBackRefresh();
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
                  Icons.delete,
                  color: Colors.white,
                ),
                iconSize: 30,
                onPressed: () {
                  showDialog(
                    context: context,
                    child: AlertDialog(
                      title: Text("Recipes Deleting!"),
                      content: Text(
                        "Are you sure you want to delete this recipe?"),
                      actions: [
                        FlatButton(
                          child: Text("No"),
                          onPressed: () => Navigator.pop(context),
                        ),
                        FlatButton(
                          child: Text("Yes"),
                          onPressed: () => deleteMyRecipe(context),
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
