import 'package:flutter/material.dart';


class BodyNotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.white,
          padding: EdgeInsets.only(left: 10,right: 10,top: 5),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(height: 10,),
                  Container(
                    
                    child: IconButton(
                      icon: Icon(Icons.notifications),
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Container(
                child: Text("datdferferferferferferrferferfa"),
              ),
            ],
          ),
        ),
         
      ],
    );
    // return Scaffold(
    //   backgroundColor: Colors.black,
    //   body:  SafeArea(
    //     child: Padding(
    //       padding:const EdgeInsets.only(top:32.0),
    //       child: Padding(
    //         padding: const EdgeInsets.only(top: 32.0),
    //         child: Column(
    //           children: <Widget>[
    //             Container(
    //               height: 40.0,
    //               child: Image(
    //               image: AssetImage('themes/images/jaja.jpeg'),
    //               ),
    //             ),
    //             Text(
    //               '11:59',
    //               style: TextStyle(
    //                 color: Colors.white,
    //                 fontSize: 80.0,
    //                 fontWeight: FontWeight.w100,
    //               ),
    //             ),
    //             Text(
    //               'Wednesday, June 19',
    //               style: TextStyle(
    //                 color: Colors.white,
    //                 fontSize: 20.0,
    //                 fontWeight: FontWeight.w100,
    //               ),
    //             ),
    //           ],
    //         ),   
    //       ),
    //     ),
    //   ),
    // );
  }
}