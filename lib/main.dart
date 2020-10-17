import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';
// import 'package:recipes/screens/recipes_screen.dart';
// import 'package:recipes/widgets/recipe_card.dart';

// import 'screens/recipes_detial.dart';
import 'screens/recipes_detial.dart';
import 'screens/recipes_screen.dart';


void main() =>runApp(MyApp());
  
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '====Recipes====',
      // home: RecipesScreen(),
      home: RecipesDetial(),
      // home:_TextFieldAutoCompleteState(),
    );
  }

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
    'Fish amoke',
    'Fish amokr',
    'Fish amoktt',
    'Fish amokyyy',
    'Fish amokwwwww',
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
