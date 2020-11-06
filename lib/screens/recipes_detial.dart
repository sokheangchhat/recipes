
import 'package:flutter/material.dart';
import 'package:recipes/bloc/color_view_bloc.dart';
// import 'package:recipes/main.dart';




class RecipesDetial extends StatefulWidget {
  final Map<String, dynamic> recipeItem; 
  RecipesDetial(this.recipeItem);
  @override
  _RecipesDetialState createState() => _RecipesDetialState();
}

class _RecipesDetialState extends State<RecipesDetial> {
  LikeViewBloc bloc = new LikeViewBloc();
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
    // Color _favIconColor = Colors.red;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 37, 52, 64),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 37, 52, 64),
        centerTitle: true,
        title: Text('Recipes Detial'),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              
              Navigator.pop(context);
            }),
      ),
      body: SingleChildScrollView(
        child: Column(
          // padding: const EdgeInsets.only(top:40,left: 10),
          children: <Widget>[
            Container(
              // height: 200,
              padding: EdgeInsets.only(bottom: 220),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16.0),
                  topLeft: Radius.circular(16.0),
                ),
                image: DecorationImage(
                  image: AssetImage(widget.recipeItem['image']),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Row(
                children: <Widget>[
                  //  plan to creat count number on love icon.
                  StreamBuilder<bool>(
                    stream: bloc.colorViewStream,
                    builder: (context, snapshot) {
                      var color = snapshot.data;

                      if (color == null) {
                        
                        return IconButton(
                          icon: Icon(
                            Icons.favorite,
                            
                            color: Colors.white,
                            size: 24,
                          ),
                          
                          onPressed: () {
                            
                            bloc.selectView(true);
                          },
                        );
                      } else if(color !=false){
                        // debugPrint("$color");
                        return IconButton(
                          icon: Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 24,
                          ),
                          onPressed: () {
                            
                            bloc.selectView(false);
                          },
                        );
                      } else{
                        return IconButton(
                          icon: Icon(
                            Icons.favorite,
                            color: Colors.white,
                            size: 24,
                          ),
                          onPressed: () {
                            
                            bloc.selectView(true);
                          },
                        );
                      }
                    }
                  ),
                  
                  Text(
                    "Love",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  
                  
                  //how to save data?
                  IconButton(
                    icon: Icon(
                      Icons.save,
                      color: Colors.white,
                      size: 24,
                    ),
                    onPressed: () { },
                  ),
                  Text(
                    "Save",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  
                  IconButton(
                    icon: Icon(
                      Icons.share,
                      color: Colors.white,
                      size: 24,
                    ),
                    onPressed: () {},
                  ),
                  Text(
                    "Share",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ],
              ),
            ),
            
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Nutrition",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: buildListNutritions(),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Ingredients",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                   
                    Column(
                      children: buildIngredients(),
                    ),
                  ],
                ),
              ),
            ),
            
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Steps",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                   
                    Column(
                      children: buildListSteps(),
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
  List<Widget> buildListNutritions() {
    List<Widget> list = List<Widget>();
    
    widget.recipeItem['nutrition'].forEach((element) {
      list.add(
        Padding(
          padding: const EdgeInsets.only(left:10),
          child: Row(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  '-',
                  // i.toString(),
                  style: TextStyle(color: Colors.white,fontSize: 20),
                ),
              ),
              
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(

                  element.toString(),
                  style: TextStyle(
                    color: Colors.white,fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
    return list;
  }

  List<Widget> buildIngredients() {
    List<Widget> list = List<Widget>();
    
    widget.recipeItem['ingredients'].forEach((element) {
      list.add(
        Padding(
          padding: const EdgeInsets.only(left:10),
          child: Row(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  '-',
                  // i.toString(),
                  style: TextStyle(color: Colors.white,fontSize: 20),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  element.toString(),
                  style: TextStyle(
                    color: Colors.white,fontSize: 16
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
    return list;
  }

  List<Widget> buildListSteps() {
    List<Widget> list = List<Widget>();
    int i = 1;
    
    widget.recipeItem['steps'].forEach((element) {
      
      list.add(
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              
              Container(
                width: 35.0,
                height: 35.0,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                ),
                child: Center(
                  
                  child: Text(
                    
                    '${i++}',
                    // i.toString(),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  element.toString(),
                  style: TextStyle(
                    color: Colors.white,fontSize: 16
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
    return list;
  }
 
  
}
