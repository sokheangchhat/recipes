
import 'package:flutter/material.dart';
import 'package:recipes/bloc/recipes_view_bloc.dart';

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
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios), 
              onPressed: (){Navigator.pop(context);}),
        ),
        body: Column(
          
          children: <Widget>[
            
            
            Container(
              padding: EdgeInsets.all(5),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: const <Widget>[
                  
                  
                ],
              )
            ),
            Expanded(

              child: ListView(
              
              // padding: const EdgeInsets.only(top:40,left: 10),
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      // height: 200,
                      padding: EdgeInsets.only(bottom: 220),
                      decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16.0),
                              topLeft: Radius.circular(16.0),
                            ),
                            image: DecorationImage(
                                image: AssetImage("themes/images/jaja.jpeg"),
                                fit: BoxFit.cover,
                            ), 
                        ),
                    ),
                    
                  ],
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Column(
                      children: <Widget>[
                        Container(
                         
                          padding: EdgeInsets.all(10),
                           child: Text("Nutrition",style: TextStyle(color: Colors.white,fontSize:  25),),
                        ),
                        Center(
                          child: Row(
                            
                            children: <Widget>[
                              SizedBox(height: 40, ),
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Text("Calories 200",
                                  style: TextStyle(
                                    color: Colors.white,fontSize:  15),
                                ),
                                
                              ),
                              SizedBox(width: 30,),
                              Flexible(
                                // padding: EdgeInsets.only(right: 10,bottom: 20),
                                child: Text("Protain 10gm",
                                  style: TextStyle(
                                    color: Colors.white,fontSize:  15),
                                ),
                                
                              ),
                              SizedBox(width: 30,),
                              Flexible(
                                // padding: EdgeInsets.only(right: 10,bottom: 20),
                                child: Text("Carb 50gm",
                                  style: TextStyle(
                                    color: Colors.white,fontSize:  15),
                                ),
                                
                              ),
                              
                              
                            ],
                          ),
                        ),
                      ],
                    ),
                    
                  ),
                ),
                Column(
                  children: <Widget>[
                    Center(
                      child: Container(
                            padding: EdgeInsets.only(left: 5,top: 5,right: 5,bottom: 10),
                            child: Text("Ingredient",style: TextStyle(color: Colors.white,fontSize:  25,),
                            ),
                          ),
                    ),
                    Row(
                      children: <Widget>[

                        Container(
                          width: 150,
                          // padding: EdgeInsets.only(left: 5,top: 5,right: 5,bottom: 10),
                          padding: EdgeInsets.only(left:10 ,right: 10,top: 10,bottom: 10),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(24.0),),
                            color: Colors.green,
                          ),
                          child: Container(
                            child: Text("2 shots espreso(a doer)",
                              style: TextStyle(color: Colors.black,fontSize: 15),
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          width: 150,
                          padding: EdgeInsets.only(left:10 ,right: 10,top: 10,bottom: 10),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(24.0),),
                            color: Colors.green,
                          ),
                          child: Container(
                            child: Text("4 cunces milk  )",
                              style: TextStyle(color: Colors.black,fontSize: 15),  
                            ),
                          ),
                        ),
                  ],
                ),
                ],
                ),
                

                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Text("Steps",style: TextStyle(color: Colors.white,fontSize:  25,),
                      ),
                    ),
                    SizedBox(height:20),
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
                          child: Text(
                            "1",style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(width: 10,),
                          Text("Gather the ingredients.",style: TextStyle(color: Colors.white),),
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
                          child: Text(
                            "2",style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(width: 10,height: 10,),
                        Container(
                          child:  ConstrainedBox(
                            constraints: BoxConstraints(
                              maxHeight: 100,
                              maxWidth: 300,
                              minHeight: 30,
                              minWidth: 300),
                              child: Text(
                                "yourText",
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
                          child: Text(
                            "3",style: TextStyle(color: Colors.black),
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
                                "First you need to take a water to be hot.dferferferffdferferferffefeferferferferffdferferferffefeferferferferffdferferferffefeferferferferffdferferferffefeferferferferffdferferferffefeferferferferffdferferferffefeferferferferffdferferferffefeferferferferffefeferferferferff",
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
                          child: Text(
                            "4",style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          child:  ConstrainedBox(
                            constraints: BoxConstraints(
                              maxHeight: 100,
                              maxWidth: 300,
                              minHeight: 30,
                              minWidth: 300
                              
                            ),
                            child: Text(
                              "yourText fejorffjeorflfjdoferjfodfjerofelrjfofjerofjfoerjfofjeorfferferferferffdferferferffefeferferferferffdferferferffefeferferferferffdferferferffefeferferferferffdferferferffefeferferferferffefeferferferferfjjdjfeorfjosfjr",
                              style: TextStyle(color: Colors.white,),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            ),

            
            
          ],
        ),
      );   
    } 
  
}


