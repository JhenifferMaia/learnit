import 'package:flutter/material.dart';
import '../../data/dao/about_dao.dart';
import '../../domain/about.dart';
import '../../widget/about_card.dart';
import 'home_page.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  Future<List<About>> lista = AboutDao().listarAbout();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre'),
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
    return FutureBuilder<List<About>>(
      future: lista,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<About> lista = snapshot.data ?? [];

          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: lista.length,
            itemBuilder: (BuildContext context, int index) {
              return AboutCard(about: lista[index]);
            },
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
