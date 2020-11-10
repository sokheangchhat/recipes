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
                          child: IconButton(
                            icon: Icon(Icons.notifications),
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}