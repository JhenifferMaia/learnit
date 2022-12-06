import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import 'package:flutter/src/widgets/container.dart';
//import 'package:flutter/src/widgets/framework.dart';
import 'package:learnit2/widget/conteudo2_widget.dart';
//import 'package:learnit2/widget/conteudos_widget.dart';
//import '../../data/dao/conteudo_dao.dart';
import '../../domain/conteudo2.dart';
import 'package:learnit2/data/conteudo_api.dart';

class Conteudoc extends StatefulWidget {
  const Conteudoc({super.key});

  @override
  State<Conteudoc> createState() => _ConteudocState();
}

class _ConteudocState extends State<Conteudoc> {

  Future<List<Conteudo>> lista = ConteudoApi().listarConteudos();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:  SingleChildScrollView(child: buildListView(),)
    );
    print(lista);
  }

  buildListView() {
    return FutureBuilder<List<Conteudo>>(
      future: lista,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          // ?? -> Verificar ser o conteudo de snapshot.data é nulo
          List<Conteudo> lista = snapshot.data ?? [];

          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: lista.length,
            itemBuilder: (BuildContext context, int index) {
              return TemplateConteudob(conteudo2: lista[index]);
            },
          );
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}