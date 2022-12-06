import 'package:flutter/material.dart';
import 'package:learnit2/pages/questions/quest.dart';
import 'package:learnit2/pages/home/home_page.dart';

class TelaAssuntos extends StatefulWidget {
  const TelaAssuntos({Key? key}) : super(key: key);
  @override
  State<TelaAssuntos> createState() => _TelaAssuntosState();
}

class _TelaAssuntosState extends State<TelaAssuntos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CITOLOGIA'),
          backgroundColor: Color(0xFF0B4619),
          toolbarHeight: 64,
          actions: [
            IconButton(
              icon: const Icon(Icons.home),
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
            // add more IconButton
          ],
        ),
        
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, children: [
              Text('Citologia',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[900],
                    //fontFamily:
                  )),
            
            buildColumnConteudo(
            paragrafo1: 'A citologia é onde as células são estudadas. A citologia passou a desenvolver-se como ciência em 1663, quando Robert Hooke cortou um pedaço de cortiça e observou ao microscópio.', 
            paragrafo2: 'Graças ao desenvolvimento da microscopia surgiu a teoria celular, onde há postulados importantes para o ramo da citoligia, como: Todos os seres vivos são constituídos por células, As atividades essenciais que caracterizam a vida ocorrem no interior das células, Novas células se formam pela divisão de células preexistentes através da divisão celular, A célula é a menor unidade da vida.', 
            titulo2: 'TIPOS DE CÉLULAS',
            subtitulo: 'PROCARIONTES', 
            paragrafo3: 'Esta tem como sua principal característica a ausencia da carioteca, assim sendo, o núcleo dessa célula não é individualizado. É importante destacar que as células procariontes são as células mais primitivas e que possuem estruturas celulares mais simples. Na reprodução as células procariontes não se reproduzem por mitose. Exemplo de célula procarionte: bactérias.', 
            subtitulo2: 'EUCARIONTES',
            paragrafo4:'Tais células são mais complaxas do que as procariontes. Ao contrário das procariontes, possuem carioteca individualizando o núcleo e também possuem vários tipos de organelas. Exemplos de células eucariontes: células animais, células vegetais',
            titulo3: 'PARTES DA CÉLULA',
            paragrafo5: 'As células eucariontes possuem partes morfológicas distintas. Suas principais partes são: membrana plasmática, citoplasma e núcleo celular.',
            subtitulo3: 'MEMBRANA PLASMÁTICA',
            paragrafo6: 'Também conhecida como membrana celular. Trata-se de uma estrutura fina e porosa. Sua função é proteger as estruturas celulares no momento em que serve de envoltório para todas as células. Ela atua como um filtro onde meio que decide o que poderá entrar, possibilitando a entrada de substâncias pequenas e impedindo ou dificultando a passagem de substâncias de grande porte, esse processo é nomeado de Permeabilidade Seletiva.',
            subtitulo4: 'CITOPLASMA',
            paragrafo7: 'No citoplasma será encotradas organelas celulares, onde é preenchido por uma matriz viscosa e semitransparente, o hialoplasma ou citosol. As organelas são pequenos órgãos da célula. Cada organela desempenha uma função distinta.',
            paragrafo8: 'Organelas celulares: Mitocôndrias(realiza a respiração celular, que produz a maior parte da energia utilizada nas funções celulares), Retículo Endoplasmático(há 2 tipos de retículo endoplasmático, o liso e o rugoso), Complexo de Golgi (principais funções do complexo de golgi são são modificar, armazenar e exportar proteínas sintetizadas no retículo endoplasmático rugoso. Ele também origina os lisossomos e os acrossomos dos espermatozoides), Lisossomos (responsáveis pela digestão intracelular. Essas organelas atuam como sacos de enzimas digestivas, digerindo nutrientes e destruindo substâncias não desejadas), Ribossomos (auxiliar a síntese de proteínas nas células), Peroxissomos (a função dos peroxissomos é a oxidação de ácidos graxos para a síntese de colesterol e respiração celular). ',
            subtitulo5: 'NÚCLEO CELULAR',
            paragrafo9: 'Nele é onde se encontra o DNA, o material genético do organismo. No núcleo ocorre a divisão celular, esse processo é extremamente importante para o crescimento e reprodução das células.',
            espaco1:' ',
            imagem: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVsq0ESSVKM86Va0uG3y7PUDYSevpuNb1KmQ&usqp=CAU',
            espaco2: ' ', )
            
        ]
        )
        )
        );
            
  }

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

   buildColumnConteudo({
    //required String titulo,
    required String paragrafo1,
    required String paragrafo2,
    required String titulo2,
    required String subtitulo,
    required String paragrafo3,
    required String subtitulo2,
    required String paragrafo4,
    required String titulo3,
    required String paragrafo5,
    required String subtitulo3,
    required String paragrafo6,
    required String subtitulo4,
    required String paragrafo7,
    required String paragrafo8,
    required String subtitulo5,
    required String paragrafo9,
    required String espaco1,
    required String imagem, 
    required String espaco2,

  }){
    return SingleChildScrollView(padding: const EdgeInsets.all(20),
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, children: [
              
              Text(paragrafo1 ,textAlign: TextAlign.justify, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              Text(paragrafo2,textAlign: TextAlign.justify, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),

              SizedBox(height: 24),

              Text(titulo2, style: TextStyle(fontSize: 22, color: Colors.green[900])),

              SizedBox(height: 16),

              Text(subtitulo,
                  style: TextStyle(
                    fontSize: 20,
                  )),

              SizedBox(height: 16),

              Text(paragrafo3, textAlign: TextAlign.justify, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),

              SizedBox(height: 16),

              Text(subtitulo2, style: TextStyle(fontSize: 20)),

              SizedBox(height: 16),
              Text(paragrafo4, textAlign: TextAlign.justify, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),

              SizedBox(height: 24),

              Text(titulo3, style: TextStyle(fontSize: 22, color: Colors.green[900])),

              SizedBox(height: 16),
              Text(paragrafo5, textAlign: TextAlign.justify, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),

              SizedBox(height: 16),
              Text(subtitulo3,
                  style: TextStyle(
                    fontSize: 20,
                  )),

              SizedBox(height: 16),
              Text(paragrafo6, textAlign: TextAlign.justify, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),

              SizedBox(height: 16),
              Text(subtitulo4,
                  style: TextStyle(
                    fontSize: 20,
                  )),

              SizedBox(height: 16),
              Text(paragrafo7,textAlign: TextAlign.justify, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              Text(paragrafo8,textAlign: TextAlign.justify, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),

              SizedBox(height: 16),
              Text(subtitulo5,
                  style: TextStyle(
                    fontSize: 20,
                  )),

              SizedBox(height: 16),
              Text(paragrafo9,textAlign: TextAlign.justify, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              Text(espaco1, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              Image.network(imagem),
              Text(espaco2, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
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
                  primary: Colors.green[900],
                ),
              )
            ]));

  }

}
