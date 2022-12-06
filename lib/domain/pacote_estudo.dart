class PacoteEstudo {
  late final String imagem;
  late final String titulo;
  late final int numParcelas;
  late final int desconto;
  late final double precoAtual;
  late final double precoAntigo;
  late final int redacao;
  late final int aula;
  late final int exercicio;
  late final int horas;
  late final int duvida;

  PacoteEstudo({
    required this.desconto,
    required this.imagem,
    required this.titulo,
    required this.numParcelas,
    required this.precoAtual,
    required this.precoAntigo,
    required this.redacao,
    required this.aula,
    required this.exercicio,
    required this.horas,
    required this.duvida,
  });

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['redacao'] = redacao;
    data['imagem'] = imagem;
    data['titulo'] = titulo;
    data['desconto'] = desconto;
    data['numParcelas'] = numParcelas;
    data['precoAtual'] = precoAtual;
    data['precoAntigo'] = precoAntigo;
    data['aula'] = aula;
    data['exercicio'] = exercicio;
    data['horas'] = horas;
    data['duvida'] = duvida;

    return data;
  }

  PacoteEstudo.fromJson(Map<String, dynamic> json) {
    redacao = json['redacao'];
    imagem = json['imagem'];
    titulo = json['titulo'];
    desconto = json['desconto'];
    numParcelas = json['numParcelas'];
    precoAtual = json['precoAtual'];
    precoAntigo = json['precoAntigo'];
    aula = json['aula'];
    exercicio = json['exercicio'];
    horas = json['horas'];
    duvida = json['duvida'];
  }
}