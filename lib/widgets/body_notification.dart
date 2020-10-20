import 'package:flutter/material.dart';


class BodyNotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(

      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
          child: Column(
            children: <Widget>[
              Center(
                // children: <Widget>[
                  
                child:Container(
                  padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 10.0),
                    child: Container(
                      padding: const EdgeInsets.only(left: 10.0, right: 5.0, bottom: 5.0,top: 5.0),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0),),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: IconButton(icon: Icon(Icons.notifications),
                                onPressed: null,
                              ),
                            ),
                            Flexible(
                            
                              child: Text(
                                "We have a new thing.!!While eating at a restaurant is an enjoyable and convenient occasional treat, most individuals and families prepare their meals at home."
                              ),
                            ),
                            
                          ],
                      ),
                    ),
                  
                ),
                // ],
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