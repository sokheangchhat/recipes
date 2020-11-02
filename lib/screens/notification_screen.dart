
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipes/bloc/recipes_view_bloc.dart';
import 'package:recipes/widgets/body_notification.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  RecipesViewBloc bloc = new RecipesViewBloc();

  @override
  void initState() {
    super.initState();//it is a life cicle,
  }
  @override
  void dispose() {
    super.dispose();//dispose is a distroy  class.
    bloc.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB( 255,37, 52, 64),
      appBar: AppBar(
        backgroundColor: Color.fromARGB( 255,37, 52, 64),
        centerTitle: true,
          title: Text('Notification'),
      ),
      body: Column(
        children: <Widget>[
          
          _notificationList(),
        ],
      ),    
    );  
  }
}
Widget _notificationList(){
  List notificationList= <int>[1,2,3,4,5,6,];
  return Expanded (
    child: ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: notificationList.length,
      itemBuilder: (BuildContext context, index) {
        return BodyNotification();
      }
    ),
  );
}


