
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipes/bloc/recipes_view_bloc.dart';
import 'package:recipes/models/data.dart';
import 'package:recipes/widgets/recipe_card.dart';

class SearchScreen extends StatefulWidget {
  final recipeItem;

  const SearchScreen({Key key, this.recipeItem}) : super(key: key);
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
          Container(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 20.0,top: 35.0),
              child: Container(
                padding: const EdgeInsets.only(left: 20.0, right: 5.0, bottom: 5.0,top: 5.0),
                // padding: EdgeInsets.all(3),
                // padding: const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0,top: 5),
                 
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40.0),),
                                    
                    color: Colors.white,
                ),
                
                child: Row(
                  
                  
                  children: <Widget>[
                    Flexible(
                     
                      child: TextField(
                        scrollPadding: EdgeInsets.all(20),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 20),
                          border: InputBorder.none,
                          // labelText: "Search recipes",
                          hintText: "Search",
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.all(Radius.circular(40),),
                        color: Colors.green,
                      ),
                      
                      
                      child: IconButton(icon: Icon(Icons.search),
                        onPressed: (){},
                      ),
                    ),
                   
                  ],
                ),
              ),
            
          ),
              _itemList(),
        ],
      ),    
    );   
  } 
  }

  Widget _itemList(){
    // final List<String> item=<String> ['a','a','a','a'];
    return Expanded (
      child: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: recipes.length,
        itemBuilder: (BuildContext context, index) {
          return RecipesListCard(recipeItem: recipes[index],);
        }
      ),
    );
  }


