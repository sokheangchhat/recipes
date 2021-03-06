import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipes/bloc/recipes_view_bloc.dart';
import 'package:recipes/models/data.dart';
import 'package:recipes/screens/myrecipes_screen.dart';
import 'package:recipes/screens/notification_screen.dart';
import 'package:recipes/widgets/recipe_card.dart';
import 'search_screen.dart';

class RecipesScreen extends StatefulWidget {
  @override
  _RecipesScreenState createState() => _RecipesScreenState();
}

class _RecipesScreenState extends State<RecipesScreen> {
  RecipesViewBloc bloc = new RecipesViewBloc();
  // bool isGridView = true;

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
    // print(isGridView);  
    return Scaffold(
      // backgroundColor: Color(0xFF2d4059),
      backgroundColor: Color.fromARGB(255, 37, 52, 64),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 37, 52, 64),
        centerTitle: true,
        title: Text('Recipes'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchScreen(),
                ),
              );
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
                    // setState(() {
                    //   isGridView = true;
                    // });
                  },
                ),
              ),
              Container(
                child: IconButton(
                  icon: Icon(Icons.list),
                  color: Colors.white,
                  onPressed: () {
                    bloc.selectView("list");
                    // setState(() {
                    //   isGridView = false;
                    // });
                  },
                ),
              ),
            ],
          ),
          Expanded(
            // child: isGridView ? _itemGrid() : _itemList(),

            child:StreamBuilder<String>(
              stream: bloc.recipesViewStream,
              builder: (context, snapshot) {
                final view = snapshot.data;
                if (view == "list") {
                  debugPrint("itemList");
                  return _itemList();
                  
                } else {
                  return _itemGrid();
                }
              },
            ),
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
                      child: Icon(
                        Icons.person,
                        size: 100,
                      ),
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
            Column(
              children: <Widget>[
                Container(
                  child: ListTile(
                    leading: Icon(Icons.image),
                    title: Text('Image'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(Icons.notifications),
                    title: Text('Notification'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NotificationScreen(),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(Icons.save),
                    title: Text('Myrecipes'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyRecipesScreen(),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Setting'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 230),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
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

  Widget _itemGrid() {
    return GridView.count(
      padding: const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: List.generate(recipes.length, (index) {
        return RecipesGridCard(
          recipeItem: recipes[index],
        );
      }),
    );
  }

  Widget _itemList() {
    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: recipes.length,
      itemBuilder: (BuildContext context, index) {
        // return Text(recipes[index]['title']);
        return RecipesListCard(
          recipeItem: recipes[index],
        );
      });
  }
}
