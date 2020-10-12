
import 'package:flutter/material.dart';


//class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("SMARTID", textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Open Sans', fontWeight: FontWeight.bold)),
            leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/images/appicon.png",
                  scale: 8.0,
                )
            )
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            Container(
                alignment: Alignment(0, -0.5),
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: MediaQuery
                    .of(context)
                    .size
                    .height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/background.jpg'),
                      fit: BoxFit.cover,
                    )
                )
            ),

            Positioned(
                width: MediaQuery.of(context).size.width,
                top: MediaQuery.of(context).size.width * 0.30,//TRY TO CHANGE THIS **0.30** value to achieve your goal 
                child: Container(
                  margin: EdgeInsets.all(16.0),
                  child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('assets/images/appicon.png', scale: 2.5),
                        SizedBox(height: 20,),
                        Text("SMARTID", style: TextStyle(
                            fontSize: 30, color: Colors.white,fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold))
                      ]
                  ),
                ))
          ],
        )
    );
  }


  //}