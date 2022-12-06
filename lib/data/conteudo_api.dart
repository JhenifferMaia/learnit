import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learnit2/domain/conteudo2.dart';
import 'package:http/http.dart';

class ConteudoApi {
  String baseUrl = "apiconteudo.jheniffermaia.repl.co";

  Future<List<Conteudo>> listarConteudos() async {
    Uri url = Uri.http(baseUrl, "/conteudos");
    Response response = await http.get(url);

    List<Conteudo> lista = <Conteudo>[];
    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);

      for (var json in result) {
        Conteudo conteudo = Conteudo.fromApiJson(json);
        lista.add(conteudo);
      }
    }

    return lista;
  }
}