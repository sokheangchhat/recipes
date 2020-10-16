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
          // Column(
          //   children: <Widget>[
              Row(
                children: <Widget>[
                  Center(
                    child: Stack (
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left:20,top: 20),
                          child: Row(
                            children: <Widget>[
                              Container(
                                
                                // padding: EdgeInsets.only(left:1),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(25.0),),
                                  // borderRadius: BorderRadius.only(
                                  //   // topRight: Radius.circular(10.0),
                                  //   topLeft: Radius.circular(24.0),
                                  //   bottomLeft: Radius.circular(24),
                                  // ),
                                  color: Colors.grey,
                              ),
                                // decoration: const BoxDecoration(
                                //   color: Colors.white,
                                  
                                //   // borderRadius: BorderRadius.all(Radius.circular(20),),
                                // ),
                                child: SizedBox(
                                  width: 255,
                                  height: 48,
                                  child: TextField(
                                    
                                    decoration: InputDecoration(
                                      
                                      // icon: IconButton(icon: Icon(Icons.search,color: Colors.black,), onPressed: null),
                                      contentPadding: EdgeInsets.only(left:15,top: 15,bottom: 15,right: 15),
                                        border: InputBorder.none,
                                            // labelText: "Search recipes",
                                          hintText: "Search",
                                         ),
                                    ),
                                  ),
                              ),
                              SizedBox(width: 15,),
                              Container(
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                      // decoration: BoxDecoration(
                                      //   borderRadius: BorderRadius.all(Radius.circular(24))
                                      // ),
                                      // color: Colors.grey,
                                      child: Container(
                                        // padding: EdgeInsets.all(),
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(24.0),),
                                            color: Colors.green,
                                        ),
                                        // color: Colors.black,

                                        child: IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: (){}),
                                        
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              // Container(
                              //   decoration: const BoxDecoration(
                              //     borderRadius: BorderRadius.only(
                              //       topRight: Radius.circular(24.0),
                              //       bottomRight: Radius.circular(24.0),
                              //     ),
                              //     color: Colors.green,
                              //   ),
                              //     // color: Colors.green,
                              //     child: IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: null),
                              // ), 
                                    // child: SizedBox(
                                    //   width: 300,
                                    //   height: 50,
                                    //   child:TextField(
                                        
                                    //     decoration: InputDecoration(
                                    //       contentPadding: EdgeInsets.only(left: 15 ,top: 15,bottom: 15),
                                    //       // border: InputBorder.none,
                                    //       // labelText: "Search recipes",
                                    //       hintText: "Search",
                                    //         icon: IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: null),
                                    //       // contentPadding:  EdgeInsets.only(
                                    //       // left: 20.0, bottom: 8.0, top: 8.0),
                                          
                                    //       border: OutlineInputBorder(
                                    //       borderSide: new BorderSide(color: Colors.red),
                                    //       borderRadius: BorderRadius.all(Radius.circular(25.0),),
                                          
                                    //     ),
                                    //     // icon: IconButton(icon: Icon(Icons.search), onPressed: null),
                                    //     ),  
                                    //     ),
                                    //   ),
                        
                              ],
                            ),
                          ),
                      ],
                    ),
                    
                  ),
                ],
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


