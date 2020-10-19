import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipesListCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
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
                AlertDialog(
                  title:  Text("Summary "),
                  content: Text("Do you want to get more detial? Please press on picture."),
                  actions: [
                    FlatButton(onPressed: (){}, child: Text("Yes")),
                    FlatButton(onPressed: (){}, child: Text("No")),
                  ],
                  
                  // shape: CircleBorder(),
                );
              }),
          ),
        ],
      ),
    );
  }
  
}

class RecipesGridCard extends StatelessWidget {
  final press;

  const RecipesGridCard({Key key, this.press}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Card(
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
                          
                          image: AssetImage("themes/images/jaja.jpeg"),
                          fit: BoxFit.cover,
                      ), 
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: IconButton(
                    icon: Icon(Icons.description,color: Colors.white,), 
                    iconSize: 30,
                    onPressed: (){
                       AlertDialog(
                        title:  Text("Summary "),
                        content: Text("Do you want to get more detial? Please press on picture."),
                        actions: [
                          FlatButton(onPressed: (){}, child: Text("Yes")),
                          FlatButton(onPressed: (){}, child: Text("No")),
                        ],
                        
                        // shape: CircleBorder(),
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
              "Eyes",style: TextStyle(fontSize: 18),
              
            ),
            
          ),
              
        ],
      ),
    );
  }
}

