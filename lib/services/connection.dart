import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class RecipceConnection{
  setDatabase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, 'my_recipes_db');
    var database = await openDatabase(path, version: 1,onCreate: _onCreatingDatabase);
    return database;
  }
  _onCreatingDatabase(Database database, int version ) async {
    Batch batch = database.batch();
    batch.execute("CREATE TABLE my_recipes(id INTEGER PRIMARY KEY, title TEXT , image TEXT, nutrition TEXT, ingredients TEXT, steps TEXT)");
    await batch.commit();
  }
}