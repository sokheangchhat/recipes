import 'package:flutter/material.dart';
import 'package:recipes/bloc/recipes_view_bloc.dart';
import 'package:recipes/screens/recipes_detial.dart';

class BodyMyRecipes extends StatefulWidget {
  @override
  _BodyMyRecipesState createState() => _BodyMyRecipesState();
}

class _BodyMyRecipesState extends State<BodyMyRecipes> {
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
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                // topRight: Radius.circular(0.0),
                                topLeft: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0), 
                              ),
                              image: DecorationImage(
                                image: AssetImage("themes/images/jaja.jpeg"),
                                fit: BoxFit.cover,
                              ), 
                            ),
                          ), 
                        ),
                        
                      ],
                    ),  
                  ),
                  Flexible(
                    child: new Container(
                      padding: new EdgeInsets.only(left:10.0,right:10.0),
                      child: new Text(
                        'Sandwich is the best fast foods in my contry.',
                        overflow: TextOverflow.ellipsis,
                        style: new TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Roboto',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 50,
                    height: 100,
                    // right: 10,
                    child: IconButton(
                      icon: Icon(Icons.description,color: Colors.white),
                      onPressed: (){
                        
                      }),
                  ),
                ],
              ),
            ),
          );
  }
  
}