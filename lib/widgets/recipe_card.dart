import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipes/models/data.dart';

import 'package:recipes/screens/recipes_detial.dart';
// import 'package:recipes/screens/recipes_detial.dart';

class RecipesListCard extends StatelessWidget {
  final recipeItem;

  const RecipesListCard({Key key, this.recipeItem}) : super(key: key);
  
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
                          image: AssetImage("themes/images/delish.jpg"),
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
                }),
            ),
          ],
        ),
      ),
    );
  }       
}

class RecipesGridCard extends StatelessWidget {
  final recipeItem;
  final image;
  final title;
  final e;
  

  const RecipesGridCard({Key key, this.recipeItem, this.image, this.title, this.e}) : super(key: key);

  
      
  @override
  Widget build(BuildContext context) {
   
    return InkWell(
      
      onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context)=> RecipesDetial(),),),},
      
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Colors.green,
        child: Column(
          children: <Widget>[
            Expanded(
              
              child: Stack(
                children: <Widget>[
                   Container(

                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0),
                        ),
                        
                        
                        image: DecorationImage(
                            
                            image: AssetImage("themes/images/rice.jpg"),
                            fit: BoxFit.cover,
                        ), 
                    ),
                  ), //this is a block of image that call from recipes_screen
                  Positioned(
                    top: 10,
                    right: 10,
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
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              child: Text(
                "Title",style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );

  
    
    // return InkWell(
    //   onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context)=> RecipesDetial(),),),},
    //   child: Card(
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(10.0),
    //     ),
    //     color: Colors.green,
    //     child: Column(
    //       children: <Widget>[
    //         Expanded(
    //           child: Stack(
    //             children: <Widget>[
    //               Container(

    //                 decoration: const BoxDecoration(
    //                     borderRadius: BorderRadius.only(
    //                       topRight: Radius.circular(10.0),
    //                       topLeft: Radius.circular(10.0),
    //                     ),
                        
                        
    //                     // image: DecorationImage(
                            
    //                     //     image: AssetImage("themes/images/rice.jpg"),
    //                     //     fit: BoxFit.cover,
    //                     // ), 
    //                 ),
    //               ),
                  
    //               Positioned(
    //                 top: 10,
    //                 right: 10,
    //                 child: IconButton(
    //                   icon: Icon(Icons.description,color: Colors.white,), 
    //                   iconSize: 30,
    //                   onPressed: (){
                        
    //                     showDialog(
    //                       context: context,
    //                       child: new AlertDialog(
    //                           title: const Text("Recipes Dialog!"),
    //                           content: const Text(
    //                             "Are you one to see more detial? Please press on picture to see detail. "
    //                           ),
    //                           actions: [
    //                           new FlatButton(
    //                             child: const Text("Close"),
    //                             onPressed: () => Navigator.pop(context),
    //                           ),
    //                         ],
    //                       ),
    //                     );
    //                   }
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //         Container(
    //           padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
    //           child: Text(
    //             "Title",style: TextStyle(fontSize: 18),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
  Widget _widget(){
    
    return Container(
      child: Image.asset(e['image']),
    );
  }
}

