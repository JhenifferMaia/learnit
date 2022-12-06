import 'package:learnit2/data/bd_helper.dart';
import 'package:sqflite/sqflite.dart';
import 'package:learnit2/domain/questoes_conteudo.dart';


class QuestsDao {

  Future<List<QuestoesConteudo>> listarQuestoesConteudo() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM QUESTS;';
    final result = await db.rawQuery(sql);

    List<QuestoesConteudo> lista = <QuestoesConteudo>[];
    for(var json in result){
      print(json);
      QuestoesConteudo questoesConteudo = QuestoesConteudo.fromJson(json);
      lista.add(questoesConteudo);
    }

    return lista;
  }

}