import 'package:flutter/material.dart';
import '../domain/conteudo2.dart';
import '../pages/questions/quest.dart';


class TemplateConteudob extends StatefulWidget {
  final Conteudo conteudo2;
  const TemplateConteudob({Key? key, required this.conteudo2}) : super(key: key);

  @override
  State<TemplateConteudob> createState() => _TemplateConteudobState();
}

class _TemplateConteudobState extends State<TemplateConteudob> {
  @override
  Widget build(BuildContext context) {

    void onPressedButton() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const QuestPage();
          },
        ),
      );
    }
    return SingleChildScrollView(padding: const EdgeInsets.all(20),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, children: [

          Text(widget.conteudo2.titulo ,textAlign: TextAlign.justify, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.greenAccent[400])),
          Text(widget.conteudo2.texto,textAlign: TextAlign.justify, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),

          SizedBox(height: 24),
          SizedBox(height: 16),

          Image.network(widget.conteudo2.imagem),

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
        ]));


  }
}
