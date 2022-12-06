import 'package:learnit2/data/bd_helper.dart';
import 'package:sqflite/sqflite.dart';
import '../../domain/conteudo.dart';

class ConteudoDao {

  Future<List<Conteudo>> listarConteudos() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM CONTEUDO;';
    final result = await db.rawQuery(sql);

    List<Conteudo> lista = <Conteudo>[];
    for(var json in result){
      Conteudo conteudo = Conteudo.fromJson(json);
      lista.add(conteudo);
    }

    return lista;
  }

}
