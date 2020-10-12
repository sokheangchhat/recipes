
class Food {
  final String image, title;// nutrition, step, name ;
  final int id;
 // final int confirm_password;
  //final Color color;
  Food({
    this.id,
    this.image,
    this.title,
    // this.nutrition,
    // this.step,
    // this.name,
    // this.color,

  });
} 
   // this.confirm_password,
   // this.password,
  

  // ignore: missing_return
  List<Food> loadRecipeItem(){
    // ignore: unused_local_variable
    var recipesitem =<Food>[
    Food(
      id: 1,
      image: "themes/images/pic.png",
      title: "Food Recipes",
    //   nutrition: "===============" ,
    //   step: "=============================",
    //   name: "sokheang",
    //   //password: 12345678,
    //  // confirm_password: 12345678,
    //   color: Color(0xFFe8e8e8),

    ),
    
    ];
  }


