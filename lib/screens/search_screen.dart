
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipes/bloc/recipes_view_bloc.dart';
import 'package:recipes/widgets/recipe_card.dart';

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

          
          Container(
            
            padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 20.0,top: 25.0),
              child: Container(
                padding: const EdgeInsets.only(left: 20.0, right: 5.0, bottom: 5.0,top: 5.0),
                 
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40.0),),
                                    
                    color: Colors.grey,
                ),
                
                child: Row(
                  
                  
                  children: <Widget>[
                    Flexible(
                     
                      child: TextField(
                        scrollPadding: EdgeInsets.all(10),
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
                      
                      
                      child: IconButton(icon: Icon(Icons.search,color: Colors.white,),
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

  RecipesListCard _itemCardList() {
    return RecipesListCard();
  }

  Widget _itemList(){
    List suggestionList= [
      'a','b','c','d','c','d''a','b','c','d','c','d'
    ];
    return Expanded (
      child: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: suggestionList.length,
        itemBuilder: (BuildContext context, index) {
          return _itemCardList( 
            
          );
        }
      ),
    );
  }


