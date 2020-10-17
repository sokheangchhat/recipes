import 'package:autocomplete_textfield/autocomplete_textfield.dart';
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

          SizedBox(height: 15,),
          Center(
            child: Container(
              // padding: const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0,top: 5),
               
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(24.0),),
                  
                  color: Colors.white,
              ),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 280,
                    height: 40,
                    child: TextField(
                      scrollPadding: EdgeInsets.all(20),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20 ,bottom: 5,right: 20),
                        border: InputBorder.none,
                        // labelText: "Search recipes",
                        hintText: "Search",
                      ),
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
    'Samlor machu trey',
    'Fish amok',
    'Char kroeung sach ko',
    'Twa ko',
    'Nom banh chok',
    'Bai sach chrouk',
    'Kuy teav',
    'Lok lak',
    ];
    return Expanded (
      child: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: suggestionList.length,
        itemBuilder: (BuildContext context, index) {
          return _itemCardList();
        }
      ),
    );
  }
  _TextFieldAutoCompleteState _autoField(){
    return _TextFieldAutoCompleteState();
  }



class _TextFieldAutoCompleteState extends StatefulWidget {
  @override
  __TextFieldAutoCompleteStateState createState() => __TextFieldAutoCompleteStateState();
}
class __TextFieldAutoCompleteStateState extends State<_TextFieldAutoCompleteState> {
  var _suggestionTextFieldControoler = new TextEditingController();
  List suggestionList= [
    'Samlor machu trey',
    'Fish amok',
    'Char kroeung sach ko',
    'Twa ko',
    'Nom banh chok',
    'Bai sach chrouk',
    'Kuy teav',
    'Lok lak',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB( 255,37, 52, 64),
      appBar:  AppBar(
        backgroundColor: Color.fromARGB( 255,37, 52, 64),
        title: Text("Text AutoComplete"),
      ),
      body: Padding(
        padding: EdgeInsets.all(17),
        child:  Column(
          children: <Widget>[
            AutoCompleteTextField(
              
              controller: _suggestionTextFieldControoler,
              clearOnSubmit: false,
              suggestions: suggestionList,
              style: TextStyle(color: Colors.black,fontSize: 16.0),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),

                ),
              ),
              itemFilter: (item, query){
                return item.toLowerCase().startsWith(query.toLowerCase());
              },

              itemSorter: (a,b){
                return a.compareTo(b);
              },
              itemSubmitted: (item){
                _suggestionTextFieldControoler.text =item;
              },
              itemBuilder: (context,item){
                return Container(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        item,
                        style: TextStyle(color:Colors.black),
                      ),
                    ],
                  ),
                );
              },
            ),
            
          ],
        ),
      ),
    );
  }
}


