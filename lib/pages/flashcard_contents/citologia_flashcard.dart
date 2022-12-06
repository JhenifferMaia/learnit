import 'package:flutter/material.dart';
import 'package:learnit2/domain/flashcardss.dart';
import '../../data/dao/flashcardCitologia_dao.dart';
import '../../domain/flashcardss.dart';
import 'package:learnit2/pages/home/home_page.dart';
import '../../widget/flashcards_card.dart';

class FlashCitologia extends StatefulWidget {
  const FlashCitologia({Key? key}) : super(key: key);

  @override
  State<FlashCitologia> createState() => _FlashCitologiaState();
}

class _FlashCitologiaState extends State<FlashCitologia> {
  Future<List<Flashcardss>> lista = FlashcardCitologiaDao().listarFlashcardCitologia();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flashcard Citologia'),
        backgroundColor: Color(0xFF0B4619),
        toolbarHeight: 64,
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const HomePage();
                  },
                ),
              );
            },
          ),
        ],
      ),
      backgroundColor: const Color(0xFFB6D0BB),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [const SizedBox(height: 16), buildListView()],
        ),
      ),
    );
  }

  void goHome() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const HomePage();
        },
      ),
    );
  }

  buildListView() {
    return FutureBuilder<List<Flashcardss>>(
      future: lista,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Flashcardss> lista = snapshot.data ?? [];

          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: lista.length,
            itemBuilder: (BuildContext context, int index) {
              return FlashCards(flashcardsss: lista[index]);
            },
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
