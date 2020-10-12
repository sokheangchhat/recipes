//import 'dart:js';

// import 'package:flutter/material.dart';
// import 'package:recipes/models/constants.dart';
// import 'package:recipes/models/food.dart';

// import 'categories.dart';

// class Body extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Padding(padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        
//         child: Text("Food",style:Theme.of(context).textTheme.headline5.copyWith(fontWeight: FontWeight.bold),
        
//         ),
//         ),
//       Categories(),
      
//       Expanded(
              
//           child: Container(
//             padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
//             child: GridView.builder(
//               itemCount: foods.length,
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2, mainAxisSpacing:kDefaultPadding,
//               crossAxisSpacing: kDefaultPadding,
//               childAspectRatio: 0.75,
//                 ),
             
//                   itemBuilder:(context,index)=> 
//                     ItemCard(food: foods[index],
//                ),
         
//              ),
//            ),
         
//          ),
      
//       ],
//     );
//   }
// }

   

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
// class Categories extends StatefulWidget {
//   @override
//   _CategoriesState createState() => _CategoriesState();
// }

// class _CategoriesState extends State<Categories> {
//   List<String> categories= [""];
//   int selectedIndex=0;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
//       child: SizedBox(
//         height:25,
//         child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: categories.length,
//           itemBuilder: (context, index)=>buildCategory(index),

//         ),
        
//       ),
//     );
//   }

//   Widget buildCategory(int index) {
//     return GestureDetector(
//       onTap: (){
//         setState(() {
//           selectedIndex=index;
//         });
//   },
//   child: Padding(
//     padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Text(
//           categories[index],
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             color: selectedIndex ==index ? kTextColor : kTextLightColor,
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.only(top: kDefaultPadding/4),
//           height:2,
//           width:30,
//           color: selectedIndex == index ? Colors.black: Colors.transparent,
//         )
//       ],
//     ),
//   ),
//     );
// }
// }