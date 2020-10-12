// import 'dart:ui';

// import 'package:recipes/models/constants.dart';
// import 'package:flutter/material.dart';
// import 'package:recipes/models/food.dart';

// class ItemCard extends StatelessWidget {
//   final Food food;
//   final Function press;
//   const ItemCard({
//     this.food,
//     this.press,
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Container(
//           padding: EdgeInsets.all(kDefaultPadding),
//           decoration: BoxDecoration(color: food.color,borderRadius: BorderRadius.circular(16)
//           ),
//          child: Image.asset(food.image),
//         ),
//         Padding(padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/4),
//         child: Text(food.title,
//         style: TextStyle(color: kTextLightColor),
//         ),
//         ),
//         Text("\$${food.title}",style: TextStyle(fontWeight: FontWeight.bold),
//         )
//       ],
//     );
//   }
// }