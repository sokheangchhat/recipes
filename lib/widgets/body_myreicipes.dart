import 'package:flutter/material.dart';
import 'package:recipes/bloc/recipes_view_bloc.dart';
import 'package:recipes/screens/recipes_detial.dart';



class BodyMyRecipes extends StatelessWidget {
  final recipeItem;

  const BodyMyRecipes({Key key, this.recipeItem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context)=> RecipesDetial(),),),},
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Colors.green,
        child: Row(
          children: <Widget>[
            Flexible(
              child: Stack(
                children: <Widget>[
                  Expanded(
                    child: Container( 
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
                  ),
                  
                ],
              ),  
            ),
            Flexible(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(left:5.0,right:5.0,bottom: 2,top: 2),
                child:  Text(
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
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10)
              ),
              // padding: EdgeInsets.only(left:10,right:5,top: 10, ),
              child: Positioned(
                // top: 1,
                // right: 1,
                
                child: IconButton(
                  icon: Icon(Icons.description,color: Colors.white,), 
                  iconSize: 30,
                  onPressed: (){
                    
                    showDialog(
                      context: context,
                      child: new AlertDialog(
                          title: const Text("Recipes Dialog!"),
                          content: const Text(
                            "Are you one to see more detial? Please press on picture to see detail. "
                          ),
                          actions: [
                          new FlatButton(
                            child: const Text("Close"),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                    );
                  }
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}

