import 'package:learnit2/data/bd_helper.dart';
import 'package:learnit2/domain/questoes.dart';
import 'package:sqflite/sqflite.dart';

class QuestCitologiaDao {

  Future<List<Questoes>> listarQuestoes() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM QUESTCITOLOGIA;';
    final result = await db.rawQuery(sql);

    List<Questoes> lista = <Questoes>[];
    for(var json in result){
      print(json);
      Questoes questoescitologia = Questoes.fromJson(json);
      lista.add(questoescitologia);
    }

    return lista;
  }

}