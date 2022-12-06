import 'package:learnit2/data/bd_helper.dart';
import 'package:learnit2/domain/flashcardss.dart';
import 'package:sqflite/sqflite.dart';

class FlashcardCitologiaDao {

  Future<List<Flashcardss>> listarFlashcardCitologia() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM FLASHCARDCITOLOGIA;';
    final result = await db.rawQuery(sql);

    List<Flashcardss> lista = <Flashcardss>[];
    for(var json in result){
      print(json);
      Flashcardss post = Flashcardss.fromJson(json);
      lista.add(post);
    }

    return lista;
  }

}