import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipes/bloc/recipes_view_bloc.dart';
import 'package:recipes/widgets/recipe_card.dart';
// import 'package:recipes/models/food.dart';

class SearchScreen extends StatefulWidget {
  @override
  _RecipesScreenState createState() => _RecipesScreenState();
}

class _RecipesScreenState extends State<SearchScreen> {
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
          title: Text('Search recipes'),
      ),
      body: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Row (
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left:40),
                    child: SizedBox(
                      width: 290,
                      height: 50,
                      child:TextField(
                        decoration: InputDecoration(
                          // border: InputBorder.none,
                          // labelText: "Search recipes",
                          hintText: "Search",fillColor: Colors.white,
                          prefixIcon: Icon(Icons.search,color: Colors.white,),
                          // contentPadding:  EdgeInsets.only(
                          // left: 20.0, bottom: 8.0, top: 8.0),
                          border: OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(25.0),),),),
                        ),
                      ),
                    ),
                
                ],
              ),
            ],
            
          ),
           _itemList(),
        ],
      ),
      
    );   
  } 

  RecipesListCard _itemCardList() {
    return RecipesListCard();
  }
  Widget _itemList(){
    return Expanded (
      child: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: ['a','b','c','a','a','b','c' ].length,
        itemBuilder: (BuildContext context, index) {
          return _itemCardList();
        }
      ),
    );
  }
  

}



