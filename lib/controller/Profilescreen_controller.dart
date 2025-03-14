import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

class ProfilescreenController with ChangeNotifier {
  static late Database myDatabase;
  List<Map> ProfileList = [];
  static Future initDb() async {
    if (kIsWeb) {
      // Change default factory on the web
      databaseFactory = databaseFactoryFfiWeb;
    }
    // open the database
    myDatabase = await openDatabase("profile0.db", version: 1,
        onCreate: (Database db, int version) async {
      // When creating the db, create the table
      await db.execute(
          'CREATE TABLE NOTE (id INTEGER PRIMARY KEY, name TEXT, phoneno TEXT,DOB TEXT)');
    });
  }

  Future addnotes({
    required name,
    required phoneno,
    required DOB,
  }) async {
    await myDatabase
        .rawInsert('INSERT INTO NOTE (name,phoneno,DOB) VALUES(?,?,?)', [
      name,
      phoneno,
      DOB,
    ]);
    getAlldetails();
    notifyListeners();
  }

  Future getAlldetails() async {
    ProfileList = await myDatabase.rawQuery('SELECT * FROM NOTE');
    print(ProfileList);
    notifyListeners();
  }

//   Future updatenotes(String Heading, String newNote, int? id) async {
//     await myDatabase.rawUpdate(
//         'UPDATE NOTE SET Heads = ? note = ? WHERE id = ?',
//         [Heading, newNote, id]);
//     getAllnotes();
//     notifyListeners();
//   }
  Future updatprofile(String name, String phoneno, String DOB, int? id) async {
    await myDatabase.rawUpdate(
        'UPDATE NOTE SET name = ?, phoneno = ?, DOB = ? WHERE id = ?',
        [name, phoneno, DOB, id]);
    getAlldetails();
    notifyListeners();
  }
}
