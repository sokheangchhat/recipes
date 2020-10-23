
import 'package:flutter/material.dart';
import 'package:recipes/models/data.dart';
import 'package:recipes/widgets/body_detail.dart';

class RecipesDetial extends StatelessWidget {
  final recipeItem;

  const RecipesDetial({Key key, this.recipeItem}) : super(key: key);
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Color.fromARGB( 255,37, 52, 64),
        appBar: AppBar(
          backgroundColor: Color.fromARGB( 255,37, 52, 64),
          centerTitle: true,
            title: Text('Recipes Detial'),
            leading: IconButton(
              icon: Icon(Icons.arrow_back), 
              onPressed: (){Navigator.pop(context);}),
            ),
            body: Column(
              children: <Widget>[
            
                Expanded(
                  child: ListView(
                        // padding: const EdgeInsets.only(top:40,left: 10),
                    children: <Widget>[
                      Column(
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
                                      image: AssetImage("themes/images/rice.jpg"),
                                      fit: BoxFit.cover,
                                  ), 
                              ),
                          ),
                          
                        ],
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              
                              padding: EdgeInsets.all(5),
                              child: Expanded(
                                child: Row(
                                  children: <Widget>[
                                    IconButton(
                                      icon: Icon(Icons.favorite,color: Colors.white,size: 24,),
                                      onPressed: (){},
                                    ),
                                    Text("Love",style: TextStyle(color: Colors.white,fontSize: 17),
                                    ),
                                    // SizedBox(width: 47,),
                                    IconButton(
                                      icon: Icon(Icons.save,color: Colors.white,size: 24,),
                                      onPressed: (){},
                                    ),
                                    Text("Save",style: TextStyle(color: Colors.white,fontSize: 17),
                                    ),
                                    // SizedBox(width: 47,),
                                    IconButton(
                                      icon: Icon(Icons.share,color: Colors.white,size: 24,),
                                      onPressed: (){},
                                    ),
                                    Text("Share",style: TextStyle(color: Colors.white,fontSize: 17),
                                    ),
                                  ],
                                ),
                              ),
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
                                child: Text("Nutrition",style: TextStyle(color: Colors.white,fontSize: 25),),

                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: <Widget>[
                                  SizedBox(height: 10,),
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
                                        "1",style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                    Container(
                                      child:  ConstrainedBox(
                                        constraints: BoxConstraints(
                                          maxHeight: 100,
                                          maxWidth: 300,
                                          minHeight: 30,
                                          minWidth: 300),
                                          child: Text(
                                            "First you need to take a water to be hot.dferfderferferfefeferfrfefferfeferferffdferferferffefefe",
                                            style: TextStyle(color: Colors.white,),
                                          ),
                                        ),
                                    ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
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
                                        "2",style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                    Container(
                                      child:  ConstrainedBox(
                                        constraints: BoxConstraints(
                                          maxHeight: 100,
                                          maxWidth: 300,
                                          minHeight: 30,
                                          minWidth: 300),
                                          child: Text(
                                            "First you need to take a water to be hot.dferferferffdferferferffefefe",
                                            style: TextStyle(color: Colors.white,),
                                          ),
                                        ),
                                    ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: <Widget>[
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
                                        "3",style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                    Container(
                                      child:  ConstrainedBox(
                                        constraints: BoxConstraints(
                                          maxHeight: 100,
                                          maxWidth: 300,
                                          minHeight: 30,
                                          minWidth: 300),
                                          child: Text(
                                            "First you need to take a water to be hot.dferferferffdferferferffefefe",
                                            style: TextStyle(color: Colors.white,),
                                          ),
                                        ),
                                    ),
                                ],
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
                                child: Text("Ingredient",style: TextStyle(color: Colors.white,fontSize: 25),),

                              ),
                              
                              Row(
                                children: <Widget>[
                                  
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
                                        "1",style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                    Container(
                                      padding: EdgeInsets.only(top: 10),
                                      child:  ConstrainedBox(
                                        
                                        constraints: BoxConstraints(
                                          maxHeight: 100,
                                          maxWidth: 300,
                                          minHeight: 30,
                                          minWidth: 300),
                                          child: Text(
                                              "First you need to take a water to be hot.",
                                              style: TextStyle(color: Colors.white,),
                                            ),
                                        ),
                                    ),
                                ],
                              ),
                              // SizedBox(height: 10,),
                              Row(
                                children: <Widget>[
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
                                        "2",style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                    Container(
                                      padding: EdgeInsets.only(top: 10),
                                      child:  ConstrainedBox(
                                        
                                        constraints: BoxConstraints(
                                          maxHeight: 100,
                                          maxWidth: 300,
                                          minHeight: 30,
                                          minWidth: 300),
                                          child: Text(
                                              "First you need to take a water to be hot.",
                                              style: TextStyle(color: Colors.white,),
                                            ),
                                        ),
                                    ),
                                ],
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
                                child: Text("Steps",style: TextStyle(color: Colors.white,fontSize: 25),),

                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: <Widget>[
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
                                        "1",style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                    Container(
                                      child:  ConstrainedBox(
                                        constraints: BoxConstraints(
                                          maxHeight: 100,
                                          maxWidth: 300,
                                          minHeight: 30,
                                          minWidth: 300),
                                          child: Text(
                                            "Produce, or the term used to describe fresh fruits and vegetables, is commonly purchased by grocery store shoppers. In terms of fruit, most grocery stores offer bananas, apples, oranges, blackberries, raspberries, grapes, pineapples, cantaloupes, watermelons, and more; ",
                                            style: TextStyle(color: Colors.white,),
                                          ),
                                        ),
                                    ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: <Widget>[
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
                                        "2",style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                    Container(
                                      
                                      child:  ConstrainedBox(
                                        
                                        constraints: BoxConstraints(
                                          maxHeight: 100,
                                          maxWidth: 300,
                                          minHeight: 30,
                                          minWidth: 300),
                                          child: Text(
                                              "Produce, or the term used to describe fresh fruits and vegetables, is commonly purchased by grocery store shoppers. In terms of fruit, most grocery stores offer bananas, apples, oranges, blackberries, raspberries, grapes, pineapples, cantaloupes, watermelons, and more; ",
                                              style: TextStyle(color: Colors.white,),
                                            ),
                                        ),
                                    ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: <Widget>[
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
                                        "3",style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Container(
                                      child:  ConstrainedBox(
                                        constraints: BoxConstraints(
                                          maxHeight: 100,
                                          maxWidth: 300,
                                          minHeight: 30,
                                          minWidth: 300),
                                          child: Text(
                                            "Produce, or the term used to describe fresh fruits and vegetables, is commonly purchased by grocery store shoppers. In terms of fruit, most grocery stores offer bananas, apples, oranges, blackberries, raspberries, grapes, pineapples, cantaloupes, watermelons, and more; ",
                                            style: TextStyle(color: Colors.white,),
                                          ),
                                      ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                    // _bodyDetailPart(),
          ],
            
        
        ),
          
      );
    } 
                  //    Widget _bodyDetailPart(){
                  //     // final List<String> item=<String> ['a','a','a','a'];
                  //     return Expanded (
                  //       child: ListView.builder(
                  //         padding: const EdgeInsets.all(10),
                  //         itemCount: recipes.length,
                  //         itemBuilder: (BuildContext context, index) {
                  //           return BodyDetail(recipeItem: recipes[index],);
                  //         }
                  //       ),
                  //     );
                  //   }
                  // }
}
          //================


// import 'package:flutter/material.dart';
// import 'package:recipes/models/data.dart';
// import 'package:recipes/widgets/body_detail.dart';

// class RecipesDetial extends StatelessWidget {
//   final recipeItem;

//   const RecipesDetial({Key key, this.recipeItem}) : super(key: key);
//   @override
//     Widget build(BuildContext context) {
//       return Scaffold(
//         backgroundColor: Color.fromARGB( 255,37, 52, 64),
//         appBar: AppBar(
//           backgroundColor: Color.fromARGB( 255,37, 52, 64),
//           centerTitle: true,
//             title: Text('Recipes Detial'),
//             leading: IconButton(
//               icon: Icon(Icons.arrow_back), 
//               onPressed: (){Navigator.pop(context);}),
//             ),
//         body: Column(
//           children: <Widget>[
//             Container(
//               padding: EdgeInsets.all(5),
//               child: Row(
//                 // mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: const <Widget>[
//                 ],
//               )
//             ),
//             Expanded(

//               child: ListView(
              
//               // padding: const EdgeInsets.only(top:40,left: 10),
//               children: <Widget>[
//                 Column(
//                   children: <Widget>[
//                     Container(
//                       // height: 200,
//                       padding: EdgeInsets.only(bottom: 220),
//                       decoration: BoxDecoration(
//                             borderRadius: BorderRadius.only(
//                               topRight: Radius.circular(16.0),
//                               topLeft: Radius.circular(16.0),
//                             ),
//                             image: DecorationImage(
//                                 image: AssetImage("${recipeItem['image']}"),
//                                 fit: BoxFit.cover,
//                             ), 
//                         ),
//                     ),
                    
//                   ],
//                 ),
//                 Container(
//                   child: Row(
//                     children: <Widget>[
//                       Container(
                        
//                         padding: EdgeInsets.all(5),
//                         child: Expanded(
//                           child: Row(
//                             children: <Widget>[
//                               IconButton(
//                                 icon: Icon(Icons.favorite,color: Colors.white,size: 24,),
//                                 onPressed: (){},
//                               ),
//                               Text("Love",style: TextStyle(color: Colors.white,fontSize: 17),
//                               ),
//                               // SizedBox(width: 47,),
//                               IconButton(
//                                 icon: Icon(Icons.save,color: Colors.white,size: 24,),
//                                 onPressed: (){},
//                               ),
//                               Text("Save",style: TextStyle(color: Colors.white,fontSize: 17),
//                               ),
//                               // SizedBox(width: 47,),
//                                IconButton(
//                                 icon: Icon(Icons.share,color: Colors.white,size: 24,),
//                                 onPressed: (){},
//                               ),
//                               Text("Share",style: TextStyle(color: Colors.white,fontSize: 17),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   padding: EdgeInsets.only(left: 10),
//                   child: Container(
//                     child: Column(
//                       children: <Widget>[
//                         Container(
//                           padding: EdgeInsets.all(10),
//                           child: Text("${recipeItem['nutrition']}",style: TextStyle(color: Colors.white,fontSize: 25),),

//                         ),
//                         SizedBox(height: 10,),
//                         Row(
//                           children: <Widget>[
//                             SizedBox(height: 10,),
//                             Container(      
//                               width: 35.0,
//                               height: 35.0,
//                               padding: const EdgeInsets.all(10.0),
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.rectangle,
//                                 color: Colors.green,
//                                 borderRadius: BorderRadius.only( 
//                                   topLeft: Radius.circular(20.0),
//                                   topRight: Radius.circular(20.0),
//                                   bottomLeft: Radius.circular(20.0),
//                                   bottomRight: Radius.circular(20.0),
//                                 ),
//                               ),
//                               child: Center(
//                                 child: Text(
//                                   "1",style: TextStyle(color: Colors.black),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(width: 10,),
//                               Container(
//                                 child:  ConstrainedBox(
//                                   constraints: BoxConstraints(
//                                     maxHeight: 100,
//                                     maxWidth: 300,
//                                     minHeight: 30,
//                                     minWidth: 300),
//                                     child: Text(
//                                       "First you need to take a water to be hot.dferfderferferfefeferfrfefferfeferferffdferferferffefefe",
//                                       style: TextStyle(color: Colors.white,),
//                                     ),
//                                   ),
//                               ),
//                           ],
//                         ),
//                         Row(
//                           children: <Widget>[
//                             Container(      
//                               width: 35.0,
//                               height: 35.0,
//                               padding: const EdgeInsets.all(10.0),
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.rectangle,
//                                 color: Colors.green,
//                                 borderRadius: BorderRadius.only( 
//                                   topLeft: Radius.circular(20.0),
//                                   topRight: Radius.circular(20.0),
//                                   bottomLeft: Radius.circular(20.0),
//                                   bottomRight: Radius.circular(20.0),
//                                 ),
//                               ),
//                               child: Center(
//                                 child: Text(
//                                   "2",style: TextStyle(color: Colors.black),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(width: 10,),
//                               Container(
//                                 child:  ConstrainedBox(
//                                   constraints: BoxConstraints(
//                                     maxHeight: 100,
//                                     maxWidth: 300,
//                                     minHeight: 30,
//                                     minWidth: 300),
//                                     child: Text(
//                                       "First you need to take a water to be hot.dferferferffdferferferffefefe",
//                                       style: TextStyle(color: Colors.white,),
//                                     ),
//                                   ),
//                               ),
//                           ],
//                         ),
//                         SizedBox(height: 10,),
//                         Row(
//                           children: <Widget>[
//                             Container(      
//                               width: 35.0,
//                               height: 35.0,
//                               padding: const EdgeInsets.all(10.0),
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.rectangle,
//                                 color: Colors.green,
//                                 borderRadius: BorderRadius.only( 
//                                   topLeft: Radius.circular(20.0),
//                                   topRight: Radius.circular(20.0),
//                                   bottomLeft: Radius.circular(20.0),
//                                   bottomRight: Radius.circular(20.0),
//                                 ),
//                               ),
//                               child: Center(
//                                 child: Text(
//                                   "3",style: TextStyle(color: Colors.black),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(width: 10,),
//                               Container(
//                                 child:  ConstrainedBox(
//                                   constraints: BoxConstraints(
//                                     maxHeight: 100,
//                                     maxWidth: 300,
//                                     minHeight: 30,
//                                     minWidth: 300),
//                                     child: Text(
//                                       "First you need to take a water to be hot.dferferferffdferferferffefefe",
//                                       style: TextStyle(color: Colors.white,),
//                                     ),
//                                   ),
//                               ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Container(
//                   padding: EdgeInsets.only(left: 10),
//                   child: Container(
//                     child: Column(
//                       children: <Widget>[
//                         Container(
//                           padding: EdgeInsets.all(10),
//                           child: Text("Ingredients",style: TextStyle(color: Colors.white,fontSize: 25),),

//                         ),
                        
//                         Row(
//                           children: <Widget>[
                            
//                             Container(      
//                               width: 35.0,
//                               height: 35.0,
//                               padding: const EdgeInsets.all(10.0),
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.rectangle,
//                                 color: Colors.green,
//                                 borderRadius: BorderRadius.only( 
//                                   topLeft: Radius.circular(20.0),
//                                   topRight: Radius.circular(20.0),
//                                   bottomLeft: Radius.circular(20.0),
//                                   bottomRight: Radius.circular(20.0),
//                                 ),
//                               ),
//                               child: Center(
//                                 child: Text(
//                                   "1",style: TextStyle(color: Colors.black),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(width: 10),
//                               Container(
//                                 padding: EdgeInsets.only(top: 10),
//                                 child:  ConstrainedBox(
                                  
//                                   constraints: BoxConstraints(
//                                     maxHeight: 100,
//                                     maxWidth: 300,
//                                     minHeight: 30,
//                                     minWidth: 300),
//                                     child: Text(
//                                         "First you need to take a water to be hot.",
//                                         style: TextStyle(color: Colors.white,),
//                                       ),
//                                   ),
//                               ),
//                           ],
//                         ),
//                         // SizedBox(height: 10,),
//                         Row(
//                           children: <Widget>[
//                             Container(      
//                               width: 35.0,
//                               height: 35.0,
//                               padding: const EdgeInsets.all(10.0),
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.rectangle,
//                                 color: Colors.green,
//                                 borderRadius: BorderRadius.only( 
//                                   topLeft: Radius.circular(20.0),
//                                   topRight: Radius.circular(20.0),
//                                   bottomLeft: Radius.circular(20.0),
//                                   bottomRight: Radius.circular(20.0),
//                                 ),
//                               ),
//                               child: Center(
//                                 child: Text(
//                                   "2",style: TextStyle(color: Colors.black),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(width: 10),
//                               Container(
//                                 padding: EdgeInsets.only(top: 10),
//                                 child:  ConstrainedBox(
                                  
//                                   constraints: BoxConstraints(
//                                     maxHeight: 100,
//                                     maxWidth: 300,
//                                     minHeight: 30,
//                                     minWidth: 300),
//                                     child: Text(
//                                         "First you need to take a water to be hot.",
//                                         style: TextStyle(color: Colors.white,),
//                                       ),
//                                   ),
//                               ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Container(
//                   padding: EdgeInsets.only(left: 10),
//                   child: Container(
//                     child: Column(
//                       children: <Widget>[
//                         Container(
//                           padding: EdgeInsets.all(10),
//                           child: Text("Steps",style: TextStyle(color: Colors.white,fontSize: 25),),

//                         ),
//                         SizedBox(height: 10,),
//                         Row(
//                           children: <Widget>[
//                             Container(      
//                               width: 35.0,
//                               height: 35.0,
//                               padding: const EdgeInsets.all(10.0),
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.rectangle,
//                                 color: Colors.green,
//                                 borderRadius: BorderRadius.only( 
//                                   topLeft: Radius.circular(20.0),
//                                   topRight: Radius.circular(20.0),
//                                   bottomLeft: Radius.circular(20.0),
//                                   bottomRight: Radius.circular(20.0),
//                                 ),
//                               ),
//                               child: Center(
//                                 child: Text(
//                                   "1",style: TextStyle(color: Colors.black),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(width: 10,),
//                               Container(
//                                 child:  ConstrainedBox(
//                                   constraints: BoxConstraints(
//                                     maxHeight: 100,
//                                     maxWidth: 300,
//                                     minHeight: 30,
//                                     minWidth: 300),
//                                     child: Text(
//                                       "Produce, or the term used to describe fresh fruits and vegetables, is commonly purchased by grocery store shoppers. In terms of fruit, most grocery stores offer bananas, apples, oranges, blackberries, raspberries, grapes, pineapples, cantaloupes, watermelons, and more; ",
//                                       style: TextStyle(color: Colors.white,),
//                                     ),
//                                   ),
//                               ),
//                           ],
//                         ),
//                         SizedBox(height: 10,),
//                         Row(
//                           children: <Widget>[
//                             Container(      
//                               width: 35.0,
//                               height: 35.0,
//                               padding: const EdgeInsets.all(10.0),
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.rectangle,
//                                 color: Colors.green,
//                                 borderRadius: BorderRadius.only( 
//                                   topLeft: Radius.circular(20.0),
//                                   topRight: Radius.circular(20.0),
//                                   bottomLeft: Radius.circular(20.0),
//                                   bottomRight: Radius.circular(20.0),
//                                 ),
//                               ),
//                               child: Center(
//                                 child: Text(
//                                   "2",style: TextStyle(color: Colors.black),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(width: 10),
//                               Container(
                                
//                                 child:  ConstrainedBox(
                                  
//                                   constraints: BoxConstraints(
//                                     maxHeight: 100,
//                                     maxWidth: 300,
//                                     minHeight: 30,
//                                     minWidth: 300),
//                                     child: Text(
//                                         "Produce, or the term used to describe fresh fruits and vegetables, is commonly purchased by grocery store shoppers. In terms of fruit, most grocery stores offer bananas, apples, oranges, blackberries, raspberries, grapes, pineapples, cantaloupes, watermelons, and more; ",
//                                         style: TextStyle(color: Colors.white,),
//                                       ),
//                                   ),
//                               ),
//                           ],
//                         ),
//                         SizedBox(height: 10,),
//                         Row(
//                           children: <Widget>[
//                             Container(      
//                               width: 35.0,
//                               height: 35.0,
//                               padding: const EdgeInsets.all(10.0),
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.rectangle,
//                                 color: Colors.green,
//                                 borderRadius: BorderRadius.only( 
//                                   topLeft: Radius.circular(20.0),
//                                   topRight: Radius.circular(20.0),
//                                   bottomLeft: Radius.circular(20.0),
//                                   bottomRight: Radius.circular(20.0),
//                                 ),
//                               ),
//                               child: Center(
//                                 child: Text(
//                                   "3",style: TextStyle(color: Colors.black),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(width: 10,),
//                             Container(
//                                 child:  ConstrainedBox(
//                                   constraints: BoxConstraints(
//                                     maxHeight: 100,
//                                     maxWidth: 300,
//                                     minHeight: 30,
//                                     minWidth: 300),
//                                     child: Text(
//                                       "Produce, or the term used to describe fresh fruits and vegetables, is commonly purchased by grocery store shoppers. In terms of fruit, most grocery stores offer bananas, apples, oranges, blackberries, raspberries, grapes, pineapples, cantaloupes, watermelons, and more; ",
//                                       style: TextStyle(color: Colors.white,),
//                                     ),
//                                 ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             ),
//           ],
//         ),
//       );
//     } 
//    Widget _bodyDetailPart(){
//     // final List<String> item=<String> ['a','a','a','a'];
//     return Expanded (
//       child: ListView.builder(
//         padding: const EdgeInsets.all(10),
//         itemCount: recipes.length,
//         itemBuilder: (BuildContext context, index) {
//           return BodyDetail(recipeItem: recipes[index],);
//         }
//       ),
//     );
//   }
// }
