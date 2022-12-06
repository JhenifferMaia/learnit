import 'package:flutter/material.dart';
import 'package:learnit2/pages/contents/conteudo_page.dart';
import 'package:learnit2/pages/questions/quest.dart';
import '../pages/flashcard_contents/citologia_flashcard.dart';

class QuestoesConteudo {
  late final String titulo;
  late final int color;
  late final Widget page;

  QuestoesConteudo({
    required this.titulo,
    required this.color,
    required this.page,
  });

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['title'] = titulo;
    data['color'] = color.toString();
    data['page'] = page;

    return data;
  }

  QuestoesConteudo.fromJson(Map<String, dynamic> json) {
    titulo = json['title'];
    color = int.parse(json['color']);
    page = _gerarPagina(json['page']);
  }

  Widget _gerarPagina(String nomePagina) {
    switch (nomePagina) {
      case 'TelaAssuntos()':
        return TelaAssuntos();

      case 'QuestPage()':
        return QuestPage();

      case 'FlashCitologia()':
        return FlashCitologia();

      default:
        return TelaAssuntos();
    }
  }
}
