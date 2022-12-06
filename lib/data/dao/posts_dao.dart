import 'package:learnit2/data/bd_helper.dart';
import 'package:learnit2/domain/network.dart';
import 'package:sqflite/sqflite.dart';

class PostsDao {

  Future<List<Network>> listarPosts() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM POSTS;';
    final result = await db.rawQuery(sql);

    List<Network> lista = <Network>[];
    for(var json in result){
      print(json);
      Network post = Network.fromJson(json);
      lista.add(post);
    }

    return lista;
  }

}