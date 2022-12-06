class Flashcardss {
  late final String pergunta;
  late final String resposta;

  Flashcardss({
    required this.pergunta,
    required this.resposta,
  });

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['pergunta'] = pergunta;
    data['resposta'] = resposta;

    return data;
  }

  Flashcardss.fromJson(Map<String, dynamic> json) {
    pergunta = json['pergunta'];
    resposta = json['resposta'];
  }
}
