
import 'package:flutter/material.dart';
import 'package:recipes/bloc/recipes_view_bloc.dart';
import 'package:recipes/widgets/recipe_card.dart';


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
            Column(
              children: <Widget>[
                
              ],
              
            ),
             _itemGrid(),
          ],
        ),
        
      );   
    } 
  
    RecipesGridCard _itemCardGrid() {
    return RecipesGridCard();
  }

   Widget _itemGrid() {
    return Expanded(
      child: Column(
        
      ),
      // child: GridView.count(
      //   padding: const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0),
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   crossAxisCount: 2,
      //   children: List.generate(100, (index) {
      //     // return _alertDialog(context, index);
      //     return _itemCardGrid();
      //   }),
      // ),
    );
  }

}


