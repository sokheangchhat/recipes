
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
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                     child: Text("Nutrition",style: TextStyle(color: Colors.white,fontSize:  20),),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: 10,bottom: 20),
                        child: Text("Cacries 200",
                          style: TextStyle(
                            color: Colors.white,fontSize:  15),
                        ),
                        
                      ),
                      Container(
                         padding: EdgeInsets.only(right: 10,bottom: 20),
                        child: Text("Protein 10gm",
                          style: TextStyle(
                            color: Colors.white,fontSize:  15),
                        ),
                        
                      ),
                      Container(
                         padding: EdgeInsets.only(right: 10,bottom: 20),
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
      );   
    } 
  
    

}


