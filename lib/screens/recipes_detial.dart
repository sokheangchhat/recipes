import 'package:flutter/material.dart';

class RecipesDetial extends StatelessWidget {
  final Map<String, dynamic> recipeItem;
  RecipesDetial(this.recipeItem);

  @override
  Widget build(BuildContext context) {
    List<Widget> listNutrition = List<Widget>();
    listNutrition = buildList();

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
                  image: AssetImage(recipeItem['image']),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 24,
                    ),
                    onPressed: () {},
                  ),
                  Text(
                    "Love",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  // SizedBox(width: 47,),
                  IconButton(
                    icon: Icon(
                      Icons.save,
                      color: Colors.white,
                      size: 24,
                    ),
                    onPressed: () {},
                  ),
                  Text(
                    "Save",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  // SizedBox(width: 47,),
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
                      children: listNutrition,
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

  List<Widget> buildList() {
    List<Widget> list = List<Widget>();
    for (int i = 0; i < recipeItem['nutrition'].length; i++) {
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
                    i.toString(),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                recipeItem['nutrition'][i].toString(),
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      );
    }
    return list;
  }
}
