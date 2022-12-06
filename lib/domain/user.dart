class User {
  late String nome;
  late String sobrenome;
  late String nascimento;
  late String celular;
  late String email;
  late String cpf;
  late String username;
  late String password;

  User({
    required this.nome,
    required this.sobrenome,
    required this.nascimento,
    required this.celular,
    required this.email,
    required this.cpf,
    required this.username,
    required this.password,
  });

  User.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    sobrenome = json['sobrenome'];
    nascimento = json['nascimento'];
    celular = json['celular'];
    email = json['email'];
    cpf = json['cpf'];
    username = json['username'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['nome'] = nome;
    data['sobrenome'] = sobrenome;
    data['nascimento'] = nascimento;
    data['celular'] = celular;
    data['email'] = email;
    data['cpf'] = cpf;
    data['username'] = username;
    data['password'] = password;
    return data;
  }
}
