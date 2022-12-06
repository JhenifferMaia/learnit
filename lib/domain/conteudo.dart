import 'package:flutter/material.dart';

class Conteudo {
  late final String paragrafo1;
  late final String paragrafo2;
  late final String titulo2;
  late final String subtitulo;
  late final String paragrafo3;
  late final String subtitulo2;
  late final String paragrafo4;
  late final String titulo3;
  late final String paragrafo5;
  late final String subtitulo3;
  late final String paragrafo6;
  late final String subtitulo4;
  late final String paragrafo7;
  late final String paragrafo8;
  late final String subtitulo5;
  late final String paragrafo9;
  late final String espaco1;
  late final String imagem;
  late final String espaco2;

  Conteudo({
    required this.paragrafo1,
    required this.paragrafo2,
    required this.titulo2,
    required this.subtitulo,
    required this.paragrafo3,
    required this.subtitulo2,
    required this.paragrafo4,
    required this.titulo3,
    required this.paragrafo5,
    required this.subtitulo3,
    required this.paragrafo6,
    required this.subtitulo4,
    required this.paragrafo7,
    required this.paragrafo8,
    required this.subtitulo5,
    required this.paragrafo9,
    required this.espaco1,
    required this.imagem,
    required this.espaco2,
  });

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['paragrafo1'] = paragrafo1;
    data['paragrafo2'] = paragrafo2;
    data['titulo2'] = titulo2;
    data['subtitulo'] = subtitulo;
    data['paragrafo3'] = paragrafo3;
    data['subtitulo2'] = subtitulo2;
    data['paragrafo4'] = paragrafo4;
    data['titulo3'] = titulo3;
    data['paragrafo5'] = paragrafo5;
    data['subtitulo3'] = subtitulo3;
    data['paragrafo6'] = paragrafo6;
    data['subtitulo4'] = subtitulo4;
    data['paragrafo7'] = paragrafo7;
    data['paragrafo8'] = paragrafo8;
    data['subtitulo5'] = subtitulo5;
    data['paragrafo9'] = paragrafo9;
    data['espaco1'] = espaco1;
    data['imagem'] = imagem;
    data['espaco2'] = espaco2;

    return data;
  }

  Conteudo.fromJson(Map<String, dynamic> json) {
    paragrafo1 = json['paragrafo1'];
    paragrafo2 = json['paragrafo2'];
    titulo2 = json['titulo2'];
    subtitulo = json['subtitulo'];
    paragrafo3 = json['paragrafo3'];
    subtitulo2 = json['subtitulo2'];
    paragrafo4 = json['paragrafo4'];
    titulo3 = json['titulo3'];
    paragrafo5 = json['paragrafo5'];
    subtitulo3 = json['subtitulo3'];
    paragrafo6 = json['paragrafo6'];
    subtitulo4 = json['subtitulo4'];
    paragrafo7 = json['paragrafo7'];
    paragrafo8 = json['paragrafo8'];
    subtitulo5 = json['subtitulo5'];
    paragrafo9 = json['paragrafo9'];
    espaco1 = json['espaco1'];
    imagem = json['imagem'];
    espaco2 = json['espaco2'];
  }
}
