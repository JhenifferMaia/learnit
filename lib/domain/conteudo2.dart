import 'package:flutter/material.dart';

class Conteudo {
  late final String titulo;
  late final String texto;
  late final String imagem;


  Conteudo({
    required this.titulo,
    required this.texto,
    required this.imagem,
  });

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['titulo'] = titulo;
    data['texto'] = texto;
    data['imagem'] = imagem;
    return data;
  }

  Conteudo.fromJson(Map<String, dynamic> json) {
    titulo = json['titulo'];
    texto = json['texto'];
    imagem = json['imagem'];
  }
  Conteudo.fromApiJson(Map<String, dynamic> json) {
    titulo = json['titulo'];
    texto = json['texto'];
    imagem = json['imagem'];
  }
}
