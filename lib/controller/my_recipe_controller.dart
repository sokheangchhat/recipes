import 'package:recipes/services/connection.dart';
import 'package:sqflite/sqflite.dart';

class MyRecipeController {
  RecipceConnection _recipceConnection;
  MyRecipeController() {
    this._recipceConnection= RecipceConnection();
  }

  static Database _database;
  Future<Database> get database async{
    if(_database != null ) 
      return _database;
    _database = await _recipceConnection.setDatabase();
      return _database;
  }
  // Inserting data
  inserData(Map<String, dynamic> recipeItem) async {
    var connection = await database;
      return await connection.insert("my_recipes", recipeItem);
  }

  // Read data from Table
  readData() async {
    var connection = await database;
      return await connection.query("my_recipes");
  }

  deleteData(int itemId) async {
    var connection = await database;
      return await connection.delete("my_recipes", where:  "id= ?", whereArgs: [itemId]);
  }
}