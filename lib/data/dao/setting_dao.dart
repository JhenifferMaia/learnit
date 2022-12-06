import 'package:learnit2/data/bd_helper.dart';
import 'package:learnit2/domain/setting.dart';
import 'package:sqflite/sqflite.dart';

class SettingDao {

  Future<List<Setting>> listarSetting() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM SETTING;';
    final result = await db.rawQuery(sql);

    List<Setting> lista = <Setting>[];
    for(var json in result){
      print(json);
      Setting setting = Setting.fromJson(json);
      lista.add(setting);
    }

    return lista;
  }

}