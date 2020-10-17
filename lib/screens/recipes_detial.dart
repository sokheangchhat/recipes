
import 'package:flutter/material.dart';
import 'package:recipes/bloc/recipes_view_bloc.dart';

class RecipesDetial extends StatefulWidget {
  @override
  _RecipesDetialState createState() => _RecipesDetialState();
}
class _RecipesDetialState extends State<RecipesDetial> {
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
        backgroundColor: Color.fromARGB( 255,37, 52, 64),
        appBar: AppBar(
          backgroundColor: Color.fromARGB( 255,37, 52, 64),
          centerTitle: true,
            title: Text('Recipes Detial'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 10,bottom: 200),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16.0),
                      topLeft: Radius.circular(16.0),
                    ),
                    image: DecorationImage(
                        image: AssetImage("themes/images/jaja.jpeg"),
                        fit: BoxFit.cover,
                    ), 
                ),
            ),
            Column(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                         child: Text("Nutrition",style: TextStyle(color: Colors.white,fontSize:  25),),
                      ),
                      Row(
                        
                        children: <Widget>[
                          SizedBox(height: 40, ),
                          Flexible(
                            // padding: EdgeInsets.only(right: 10,bottom: 20),
                            child: Text("Calories 200",
                              style: TextStyle(
                                color: Colors.white,fontSize:  15),
                            ),
                            
                          ),
                          SizedBox(width: 30,),
                          Flexible(
                            // padding: EdgeInsets.only(right: 10,bottom: 20),
                            child: Text("Protain 10gm",
                              style: TextStyle(
                                color: Colors.white,fontSize:  15),
                            ),
                            
                          ),
                          SizedBox(width: 30,),
                          Flexible(
                            // padding: EdgeInsets.only(right: 10,bottom: 20),
                            child: Text("Carb 50gm",
                              style: TextStyle(
                                color: Colors.white,fontSize:  15),
                            ),
                            
                          ),
                          
                          
                        ],
                      ),
                    ],
                  ),
                  
                ),
              ],
            ),
            Container(
                    padding: EdgeInsets.all(20),
                     child: Text("Ingredients",style: TextStyle(color: Colors.white,fontSize:  25,),),
                  ),
            Row(
              children: <Widget>[
                
                Container(
                  
                  padding: EdgeInsets.only(left: 5,top: 5,right: 5,bottom: 10),
                  decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(24.0),),
                  color: Colors.green,
                  ),
                  
                  child: Container(

                    child: Text("2 shots espreso(a double shot)",
                      style: TextStyle(color: Colors.black,fontSize: 15),
                      
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                Container(
                  
                  padding: EdgeInsets.only(left: 5,top: 5,right: 5,bottom: 10),
                  decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(24.0),),
                  color: Colors.green,
                  ),
                  
                  child: Container(

                    child: Text("4 cunces milk)",
                      style: TextStyle(color: Colors.black,fontSize: 15),
                      
                    ),
                  ),
                ),
              ],
            ),
            // SizedBox(height:10),
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(20),
                    child: Text("Steps",style: TextStyle(color: Colors.white,fontSize:  25,),
                ),
                ),
                SizedBox(height:50),
                Row(
                  children: <Widget>[
                    Container(      
                      width: 35.0,
                      height: 35.0,
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.green,
                        borderRadius: BorderRadius.only( 
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      child: Text(
                        "1",style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text("Gather the ingredients.",style: TextStyle(color: Colors.white),),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(      
                      width: 35.0,
                      height: 35.0,
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.green,
                        borderRadius: BorderRadius.only( 
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      child: Text(
                        "2",style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      child:  ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: 100,
                          maxWidth: 300,
                          minHeight: 30,
                          minWidth: 300),
                        child: Text(
                          "yourText",
                          style: TextStyle(color: Colors.white,),
                        ),
                      ),
                      
                    ),
                    
                    
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(20),
                    child: Text("step",style: TextStyle(color: Colors.white,fontSize:  25,),
                ),
                ),
              ],
            ),
          ],
        ),
      );   
    } 
  
    

}


