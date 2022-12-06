import 'package:learnit2/data/bd_helper.dart';
import 'package:learnit2/domain/pacote_estudo.dart';
import 'package:sqflite/sqflite.dart';

class PacotesDao {

  Future<List<PacoteEstudo>> listarPacotes() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM PACOTES;';
    final result = await db.rawQuery(sql);

    List<PacoteEstudo> lista = <PacoteEstudo>[];
    for(var json in result){
      print(json);
      PacoteEstudo post = PacoteEstudo.fromJson(json);
      lista.add(post);
    }
    return lista;
  }
}