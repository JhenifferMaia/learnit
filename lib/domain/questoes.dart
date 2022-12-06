class Questoes {
  late final String title;
  late final String a;
  late final String b;
  late final String c;
  late final String d;
  late final int color;
  late final String answer;

  Questoes({
    required this.title,
    required this.a,
    required this.b,
    required this.c,
    required this.d,
    required this.color,
    required this.answer,
  });

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['title'] = title;
    data['a'] = a;
    data['b'] = b;
    data['c'] = c;
    data['d'] = d;
    data['color'] = color;
    data['resp'] = answer;


    return data;
  }

  Questoes.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    a = json['a'];
    b = json['b'];
    c = json['c'];
    d = json['d'];
    color = json['color'];
    answer = json['answer'];
  }
}
