import 'package:learnit2/data/bd_helper.dart';
import 'package:learnit2/domain/user.dart';
import 'package:sqflite/sqflite.dart';

class UserDao {

  Future<void> salvarUser({required User user}) async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    await db.insert('user', user.toJson());
  }

  Future<bool> autenticar(
      {required String user, required String password}) async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * '
        'FROM user '
        'WHERE username = ? AND password = ?;';

    final result = await db.rawQuery(sql, [user, password]);

    return result.isNotEmpty;
  }

  listarUsers() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM user;';
    final result = await db.rawQuery(sql);

    List<User> lista = <User>[];
    for (var json in result) {
      User usuario = User.fromJson(json);
      lista.add(usuario);
    }

    return lista;
  }
}
