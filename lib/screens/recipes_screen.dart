// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:recipes/bloc/recipes_view_bloc.dart';
// import 'package:recipes/models/food.dart';



// class RecipesScreen extends StatefulWidget {
//   @override
//   _RecipesScreenState createState() => _RecipesScreenState();
// }

// class _RecipesScreenState extends State<RecipesScreen> {
//   RecipesViewBloc bloc = new RecipesViewBloc();


//   @override
//   void initState() {
//     super.initState();

//   }

//   @override
//   void dispose() {
//     super.dispose();
//     bloc.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Color(0xFF2d4059),
//       backgroundColor: Color.fromARGB( 255,37, 52, 64),
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB( 255,37, 52, 64),
//         centerTitle: true,
//           title: Text('Recipes'),
//             actions: <Widget>[
//               IconButton(
//                 icon: Icon(Icons.search),
//                 onPressed: () {
//                   showSearch(context: context, delegate: RecipesItemSearch());
//               },
//               ),
//             ],
//       ),
//       body: Column(
//         children: <Widget>[
//           Row(
//             children: <Widget>[
//               Container(
//                 child: IconButton(
//                   icon: Icon(Icons.grid_on),
//                   color: Colors.white,
//                   onPressed: () {
//                     bloc.selectView("grid");
//                   },
//                 ),
//               ),
//               Container(
//                 child: IconButton(
//                   icon: Icon(Icons.list),
//                   color: Colors.white,
//                   onPressed: () {
//                     bloc.selectView("list");
//                   },
//                 ),
//               ),
//             ],
//           ),

//           StreamBuilder<String>(
//             stream: bloc.recipesViewStream,
//             builder: (context, snapshot) {
//               debugPrint("hello");
//               debugPrint("${snapshot.data}");
//               final view = snapshot.data;
//               if(view == "list"){
//                 return _itemList();
//               }
//               else {
//                 return _itemGrid();
//               }
//             },
//           ),
//         ],
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Color(0xFF30475e),
//               ),
//               child: Stack(
//                 children: <Widget>[
//                   Align(
//                     alignment: Alignment.centerLeft,
//                     child: CircleAvatar(
//                       backgroundColor: Colors.white,
//                       radius: 50.0,
//                     ),
//                   ),
//                   Align(
//                     alignment: Alignment.centerRight,
//                     child: Text(
//                       'Profile ',
//                       style: TextStyle(color: Colors.white, fontSize: 20.0),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.image),
//               title: Text('Image'),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.settings),
//               title: Text('Setting'),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.notifications),
//               title: Text('Notification'),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.save),
//               title: Text('Myrecipes'),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             Expanded(
//               child: Align(
//                 alignment: Alignment.topRight,
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     ListTile(
//                       title: Text(''),
//                     ),
//                     //  ListTile(leading: Icon(Icons.settings),
//                     //   title: Text(''),
//                     //   onTap: () =>Navigator.pop(context),
//                     //  ),
//                     ListTile(
//                       title: Text(''),
//                     ),
//                     ListTile(
//                       title: Text(''),
//                     ),
//                     ListTile(
//                       title: Text(''),
//                     ),

//                     ListTile(
//                       title: Text('Version 1.0.0'),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _itemCardGrid() {
//     return Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10.0),
//       ),
//       color: Colors.green,
      
//       child: Column(
//         children: <Widget>[
//           Expanded(
//             child: Stack(
//               children: <Widget>[
//                 Container(
//                   decoration: const BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                         topRight: Radius.circular(10.0),
//                         topLeft: Radius.circular(10.0),
//                       ),
//                       image: DecorationImage(
//                           image: AssetImage("themes/images/jaja.jpeg"),
//                           fit: BoxFit.cover,
//                       ), 
//                   ),
//                 ),
//                 Positioned(
//                   top: 10,
//                   right: 10,
//                   child: IconButton(
//                     icon: Icon(Icons.description,color: Colors.white,), 
//                     iconSize: 30,
//                     onPressed: (){
//                     }
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
//             child: Text(
//               "Eyes",style: TextStyle(fontSize: 18),
//             ),
//           ),    
//         ],
//       ),
//     );
//   }

//   Widget _itemGrid() {
//     return Expanded(
//       child: GridView.count(
//         padding: const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0),
//         crossAxisSpacing: 10,
//         mainAxisSpacing: 10,
//         crossAxisCount: 2,
//         children: List.generate(100, (index) {
//           // return _alertDialog(context, index);
//           return _itemCardGrid();
//         }),
//       ),
//     );
//   }

//   Widget _itemCardList() {
//     return Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10.0),
//       ),
//       color: Colors.green,
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             child: Stack(
//               children: <Widget>[
//                 Expanded(
//                   child: Container(
//                     width: 200,
//                     height: 100,
//                     child: Column(
//                       children: <Widget>[
//                         Container(
//                           width: 200,
//                           height:100,
//                           decoration: const BoxDecoration(
//                             borderRadius: BorderRadius.only(
//                               topRight: Radius.circular(0),
//                               topLeft: Radius.circular(10.0),
//                               bottomLeft: Radius.circular(10.0),
//                             ),
//                             image: DecorationImage(
//                                   image: AssetImage("themes/images/jaja.jpeg"),
//                                   fit: BoxFit.fitHeight,
//                             ), 
//                           ),
//                         ),
//                       ],
//                     ),
//                   ), 
//                 ),
                
//               ],
              
//             ),    
//           ),
//           Flexible(
//             child: new Container(
//               padding: new EdgeInsets.only(left:10.0,right:10.0),
//               child: new Text(
//                 'Sandwich is the best fast foods in my contry.',
//                 overflow: TextOverflow.ellipsis,
//                 style: new TextStyle(
//                   fontSize: 18.0,
//                   fontFamily: 'Roboto',
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             bottom: 50,
//             height: 100,
//             // right: 10,
//             child: IconButton(
//               icon: Icon(Icons.description,color: Colors.white),
//               onPressed: (){}),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _itemList(){
//     return Expanded (
//       child: ListView.builder(
//         padding: const EdgeInsets.all(10),
//         itemCount: ['a','b','c','a','a','b','c' ].length,
//         itemBuilder: (BuildContext context, index) {
//           return _itemCardList();
//         }
//       ),
//     );
//   }

// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipes/bloc/recipes_view_bloc.dart';
import 'package:recipes/models/food.dart';

import 'search_screen.dart';



class RecipesScreen extends StatefulWidget {
  @override
  _RecipesScreenState createState() => _RecipesScreenState();
}

class _RecipesScreenState extends State<RecipesScreen> {
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
      // backgroundColor: Color(0xFF2d4059),
      backgroundColor: Color.fromARGB( 255,37, 52, 64),
      appBar: AppBar(
        backgroundColor: Color.fromARGB( 255,37, 52, 64),
        centerTitle: true,
          title: Text('Recipes'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchScreen(),),);
                },
              ),
            ],
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                child: IconButton(
                  icon: Icon(Icons.grid_on),
                  color: Colors.white,
                  onPressed: () {
                    bloc.selectView("grid");
                  },
                ),
              ),
              Container(
                child: IconButton(
                  icon: Icon(Icons.list),
                  color: Colors.white,
                  onPressed: () {
                    bloc.selectView("list");
                  },
                ),
              ),
            ],
          ),

          StreamBuilder<String>(
            stream: bloc.recipesViewStream,
            builder: (context, snapshot) {
              debugPrint("hello");
              debugPrint("${snapshot.data}");
              final view = snapshot.data;
              if(view == "list"){
                return _itemList();
              }
              else {
                return _itemGrid();
              }
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF30475e),
              ),
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50.0,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Profile ',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.image),
              title: Text('Image'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notification'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.save),
              title: Text('Myrecipes'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Expanded(
              child: Align(
                alignment: Alignment.topRight,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      title: Text(''),
                    ),
                    //  ListTile(leading: Icon(Icons.settings),
                    //   title: Text(''),
                    //   onTap: () =>Navigator.pop(context),
                    //  ),
                    ListTile(
                      title: Text(''),
                    ),
                    ListTile(
                      title: Text(''),
                    ),
                    ListTile(
                      title: Text(''),
                    ),

                    ListTile(
                      title: Text('Version 1.0.0'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _itemCardGrid() {
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

  Widget _itemGrid() {
    return Expanded(
      child: GridView.count(
        padding: const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: List.generate(100, (index) {
          // return _alertDialog(context, index);
          return _itemCardGrid();
        }),
      ),
    );
  }

  Widget _itemCardList() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Colors.green,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                Expanded(
                  child: Container(
                    width: 200,
                    height: 100,
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 200,
                          height:100,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(0),
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                            ),
                            image: DecorationImage(
                                  image: AssetImage("themes/images/jaja.jpeg"),
                                  fit: BoxFit.fitHeight,
                            ), 
                          ),
                        ),
                      ],
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
              onPressed: (){}),
          ),
        ],
      ),
    );
  }

  Widget _itemList(){
    final myItem = loadRecipeItem();
    return Expanded (
      child: ListView.builder(
        padding: const EdgeInsets.all(10),
        
        itemCount: myItem.length,
        itemBuilder: (BuildContext context, index) {
          final Food listItem = myItem[index];
          return _itemCardList();
        }
      ),
    );
  }

}

class RecipesItemSearch extends SearchDelegate<ListView> {
  @override
  List<Widget> buildActions(BuildContext context) {
      return [IconButton(
        icon: Icon(Icons.clear), 
        onPressed: (){})];
    }
  
    @override
    Widget buildLeading(BuildContext context) {
      return IconButton(
        icon: Icon(Icons.arrow_back), 
        onPressed: (){
          
          
        });
    }
  
    @override
    Widget buildResults(BuildContext context) {

      throw UnimplementedError();
    }
    
    @override
    Widget buildSuggestions(BuildContext context) {
      final lst = loadRecipeItem();
      return ListView.builder(
        itemCount: lst.length,
        itemBuilder: (context,index){
          final Food listitem = lst[index];
          return ListTile(
            title: Text(listitem.title),);
        },

      );
  }

}