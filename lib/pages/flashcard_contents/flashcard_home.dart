import 'package:flutter/material.dart';
import 'package:learnit2/domain/questoes_conteudo.dart';
import 'package:learnit2/data/oldData/bd.dart';
import 'package:learnit2/widget/questoes_conteudo_card.dart';

import '../../data/dao/flashcard_dao.dart';

class FlashcardHome extends StatefulWidget {
  const FlashcardHome({Key? key}) : super(key: key);

  @override
  State<FlashcardHome> createState() => _FlashcardHomeState();
}

class _FlashcardHomeState extends State<FlashcardHome> {
  // Future<List<QuestoesConteudo>> lista = BD.getListaFlashCard();
  Future<List<QuestoesConteudo>> lista = FlashCardDao().listarQuestoesConteudo();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('FlashCards'),
        backgroundColor: const Color(0xFF025939),
        toolbarHeight: 64,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [const SizedBox(height: 16), buildListView()],
        ),
      ),
    );
  }

  buildListView() {
    return FutureBuilder<List<QuestoesConteudo>>(
      future: lista,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<QuestoesConteudo> lista = snapshot.data ?? [];

          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: lista.length,
            itemBuilder: (BuildContext context, int index) {
              return CardQuestoesConteudo(questoesConteudo: lista[index]);
            },
          );
        }
        return Center(child: const CircularProgressIndicator());
      },
    );
  }
}
