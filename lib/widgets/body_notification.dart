import 'package:flutter/material.dart';


class BodyNotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Column(
    //   children: <Widget>[
    //     Row(
    //       children: <Widget>[
    //         Container(
    //           child: Icon(Icons.notifications,color: Colors.black,),
    //         ),
    //         Container(
                  
    //               // padding: EdgeInsets.only(left: 5,top: 5,right: 5,bottom: 10),
    //               width: 160,
    //               padding: EdgeInsets.all(8),
    //               decoration: const BoxDecoration(
    //                 borderRadius: BorderRadius.all(Radius.circular(24.0),),
    //                 color: Colors.green,
    //               ),
    //               child: Container(
    //                 child: Text("4 cunces milk  rferferferfefrferferferferferferferferferfrfr)",
    //                   style: TextStyle(color: Colors.black,fontSize: 15),  
    //                 ),
    //               ),
    //             ),
    //     ],
    //     ),
    //   ],
    // );
    return Scaffold(
      backgroundColor: Colors.black,
      body:  SafeArea(
        child: Padding(
          padding:const EdgeInsets.only(top:32.0),
          child: Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: 40.0,
                  child: Image(
                  image: AssetImage('themes/images/jaja.jpeg'),
                  ),
                ),
                Text(
                  '11:59',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 80.0,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                Text(
                  'Wednesday, June 19',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ],
            ),   
          ),
        ),
      ),
    );
  }
}