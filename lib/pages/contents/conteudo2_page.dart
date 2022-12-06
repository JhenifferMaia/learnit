
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learnit2/widget/conteudos_widget.dart';

import '../../data/dao/conteudo_dao.dart';
import '../../domain/conteudo.dart';

class Conteudob extends StatefulWidget {
  const Conteudob({super.key});

  @override
  State<Conteudob> createState() => _ConteudobState();
}

class _ConteudobState extends State<Conteudob> {
  Future<List<Conteudo>> lista = ConteudoDao().listarConteudos();
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
              return TemplateConteudo(conteudo: lista[index]);
            },
          );
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }
  /*buildCollumn(
      returnSingleChildScrollView(padding: const EdgeInsets.all(20),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, children: [

          Text(widget.conteudo.paragrafo1 ,textAlign: TextAlign.justify, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
          Text(widget.conteudo.paragrafo2,textAlign: TextAlign.justify, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),

          SizedBox(height: 24),

          Text(widget.conteudo.titulo2, style: TextStyle(fontSize: 22, color: Colors.greenAccent[400])),

          SizedBox(height: 16),

          Text(widget.conteudo.subtitulo,
              style: TextStyle(
                fontSize: 20,
              )),

          SizedBox(height: 16),

          Text(widget.conteudo.paragrafo3, textAlign: TextAlign.justify, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),

          SizedBox(height: 16),

          Text(widget.conteudo.subtitulo2, style: TextStyle(fontSize: 20)),

          SizedBox(height: 16),
          Text(widget.conteudo.paragrafo4, textAlign: TextAlign.justify, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),

          SizedBox(height: 24),

          Text(widget.conteudo.titulo3, style: TextStyle(fontSize: 22, color: Colors.greenAccent[400])),

          SizedBox(height: 16),
          Text(widget.conteudo.paragrafo5, textAlign: TextAlign.justify, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),

          SizedBox(height: 16),
          Text(widget.conteudo.subtitulo3,
              style: TextStyle(
                fontSize: 20,
              )),

          SizedBox(height: 16),
          Text(widget.conteudo.paragrafo6, textAlign: TextAlign.justify, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),

          SizedBox(height: 16),
          Text(widget.conteudo.subtitulo4,
              style: TextStyle(
                fontSize: 20,
              )),

          SizedBox(height: 16),
          Text(widget.conteudo.paragrafo7,textAlign: TextAlign.justify, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
          Text(widget.conteudo.paragrafo8,textAlign: TextAlign.justify, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),

          SizedBox(height: 16),
          Text(widget.conteudo.subtitulo5,
              style: TextStyle(
                fontSize: 20,
              )),

          SizedBox(height: 16),
          Text(widget.conteudo.paragrafo9,textAlign: TextAlign.justify, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
          Text(widget.conteudo.espaco1, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
          Image.network(widget.conteudo.imagem),
          Text(widget.conteudo.espaco2, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
          ElevatedButton(
            onPressed: onPressedButton,
            child: const Text(
              'QUESTÕES',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.greenAccent[400],
            ),
          )
        ]));SingleChildScrollView(padding: const EdgeInsets.all(20),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, children: [

          Text(widget.conteudo.paragrafo1 ,textAlign: TextAlign.justify, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
          Text(widget.conteudo.paragrafo2,textAlign: TextAlign.justify, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),

          SizedBox(height: 24),

          Text(widget.conteudo.titulo2, style: TextStyle(fontSize: 22, color: Colors.greenAccent[400])),

          SizedBox(height: 16),

          Text(widget.conteudo.subtitulo,
              style: TextStyle(
                fontSize: 20,
              )),

          SizedBox(height: 16),

          Text(widget.conteudo.paragrafo3, textAlign: TextAlign.justify, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),

          SizedBox(height: 16),

          Text(widget.conteudo.subtitulo2, style: TextStyle(fontSize: 20)),

          SizedBox(height: 16),
          Text(widget.conteudo.paragrafo4, textAlign: TextAlign.justify, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),

          SizedBox(height: 24),

          Text(widget.conteudo.titulo3, style: TextStyle(fontSize: 22, color: Colors.greenAccent[400])),

          SizedBox(height: 16),
          Text(widget.conteudo.paragrafo5, textAlign: TextAlign.justify, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),

          SizedBox(height: 16),
          Text(widget.conteudo.subtitulo3,
              style: TextStyle(
                fontSize: 20,
              )),

          SizedBox(height: 16),
          Text(widget.conteudo.paragrafo6, textAlign: TextAlign.justify, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),

          SizedBox(height: 16),
          Text(widget.conteudo.subtitulo4,
              style: TextStyle(
                fontSize: 20,
              )),

          SizedBox(height: 16),
          Text(widget.conteudo.paragrafo7,textAlign: TextAlign.justify, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
          Text(widget.conteudo.paragrafo8,textAlign: TextAlign.justify, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),

          SizedBox(height: 16),
          Text(widget.conteudo.subtitulo5,
              style: TextStyle(
                fontSize: 20,
              )),

          SizedBox(height: 16),
          Text(widget.conteudo.paragrafo9,textAlign: TextAlign.justify, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
          Text(widget.conteudo.espaco1, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
          Image.network(widget.conteudo.imagem),
          Text(widget.conteudo.espaco2, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
          ElevatedButton(
            onPressed: onPressedButton,
            child: const Text(
              'QUESTÕES',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.greenAccent[400],
            ),
          )
        ]));*/

  
}
