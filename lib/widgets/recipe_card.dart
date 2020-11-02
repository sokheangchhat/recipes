import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipes/models/data.dart';

import 'package:recipes/screens/recipes_detial.dart';

class RecipesListCard extends StatelessWidget {
  final Map<String, dynamic> recipeItem;

  const RecipesListCard({
    Key key,
    this.recipeItem,
  }) : super(key: key);

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
                  color: Colors.grey, borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.all(1),
              child: IconButton(
                  icon: Icon(
                    Icons.description,
                    color: Colors.white,
                  ),
                  iconSize: 30,
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
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class RecipesGridCard extends StatelessWidget {
  final recipeItem; //property

  const RecipesGridCard({
    Key key,
    this.recipeItem,
  }) : super(key: key);

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
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)),
                    child: IconButton(
                        icon: Icon(
                          Icons.description,
                          color: Colors.white,
                        ),
                        iconSize: 30,
                        onPressed: () {
                          showDialog(
                            context: context,
                            child: new AlertDialog(
                              title: const Text("Recipes Dialog!"),
                              content: const Text(
                                  "Are you one to see more detial? Please press on picture to see detail. "),
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
