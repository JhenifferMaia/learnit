import 'package:learnit2/data/bd_helper.dart';
import 'package:learnit2/domain/about.dart';
import 'package:sqflite/sqflite.dart';

class AboutDao {

  Future<List<About>> listarAbout() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM ABOUT;';
    final result = await db.rawQuery(sql);

    List<About> lista = <About>[];
    for(var json in result){
      print(json);
      About post = About.fromJson(json);
      lista.add(post);
    }

    return lista;
  }

}