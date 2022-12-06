import 'package:flutter/cupertino.dart';

import '../pages/sideBar/settings/managerData_page.dart';

class Setting {
  late String title;
  late Widget page;
  late int color;

  Setting({
    required this.title,
    required this.page,
    required this.color,
  });

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['title'] = title;
    data['page'] = page;
    data['color'] = color.toString();

    return data;
  }

  Setting.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    page = _gerarPagina(json['page']);
    color = int.parse(json['color']);
  }

  Widget _gerarPagina(String nomePagina) {
    switch (nomePagina) {
      case 'ManageData()':
        return const ManageData();

      default:
        return const ManageData();
    }
  }
}
