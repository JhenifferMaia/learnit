import 'package:learnit2/data/bd_helper.dart';
import 'package:sqflite/sqflite.dart';
import 'package:learnit2/domain/cronograma.dart';


class CronoDao {

  Future<List<Cronograma>> listarCronograma() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM crono;';
    final result = await db.rawQuery(sql);

    List<Cronograma> lista = <Cronograma>[];
    for(var json in result){
      print(json);
      Cronograma cronograma = Cronograma.fromJson(json);
      lista.add(cronograma);
    }

    return lista;
  }

  // Future<String> getTitleCrono() async{
  //   String tit = 'SELECT title FROM CONTENTS;';
  //   return tit;
  // }

}