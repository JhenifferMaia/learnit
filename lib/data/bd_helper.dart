import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  initDB() async {
    String databasePath = await getDatabasesPath();

    String path = join(databasePath, "banko013.db");

    Database database = await openDatabase(
      path,
      version: 1,
      onCreate: onCreate,
    );

    print(path);
    return database;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    String sql =
        'create table POSTS (id INTEGER PRIMARY KEY, url_avatar varchar(500), author varchar(100), type varchar(100), caption varchar(100), url_post varchar(500), date varchar(100), likeCount integer, commentCount integer);';
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Abelhas nos protegem.', 'https://ronaldo913.github.io/ImagensPMovel/images/1.jpeg', '08/09/2022', 856, 85);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Não a extinção!', 'https://ronaldo913.github.io/ImagensPMovel/images/2.jpeg', '07/09/2022', 1175, 98);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Eles são muito parceiros!', 'https://ronaldo913.github.io/ImagensPMovel/images/3.jpeg', '06/09/2022', 2458, 125);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Lêmures são perigoros :)', 'https://ronaldo913.github.io/ImagensPMovel/images/4.jpeg', '05/09/2022', 412, 75);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (5, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Cocoricóó', 'https://ronaldo913.github.io/ImagensPMovel/images/5.jpeg', '04/09/2022', 135, 18);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (6, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Happy Feet', 'https://ronaldo913.github.io/ImagensPMovel/images/13.jpeg', '03/09/2022', 4, 2);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (7, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Que preguiça!', 'https://ronaldo913.github.io/ImagensPMovel/images/6.jpeg', '02/09/2022', 467, 23);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (8, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'béééééééé', 'https://ronaldo913.github.io/ImagensPMovel/images/14.jpeg', '01/09/2022', 234, 12);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (9, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Simplesmente alpacas.', 'https://ronaldo913.github.io/ImagensPMovel/images/7.jpeg', '30/08/2022', 300, 55);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (10, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Sentimentos', 'https://ronaldo913.github.io/ImagensPMovel/images/15.jpeg', '29/08/2022', 234, 34);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (11, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Tartabundas', 'https://ronaldo913.github.io/ImagensPMovel/images/8.jpeg', '28/08/2022', 123, 32);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (12, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'doguinho', 'https://ronaldo913.github.io/ImagensPMovel/images/9.jpeg', '17/08/2022', 34, 54);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (13, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Eu sou uma foca!', 'https://ronaldo913.github.io/ImagensPMovel/images/10.jpeg', '16/08/2022', 546, 12);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (14, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'ratinho diferente', 'https://ronaldo913.github.io/ImagensPMovel/images/11.jpeg', '15/08/2022', 613, 49);";
    await db.execute(sql);

    ///////////////////////////////////////////////

    String sql1 =
        'create table QUESTCITOLOGIA (id INTEGER PRIMARY KEY, title varchar(2000), a varchar(500), b varchar(500), c varchar(500), d varchar(500), answer varchar(250), color int);';
    await db.execute(sql1);

    sql1 =
        "INSERT INTO QUESTCITOLOGIA (id, title, a, b, c, d, answer, color) VALUES (1, '1) Costuma-se dizer que as células são formadas por membrana, citoplasma e núcleo. Entretanto, não são todas as células que apresentam um núcleo definido e delimitado por membrana nuclear. Baseando-se nisso, o mais correto seria afirmar que todas as células possuem membrana, citoplasma e material genético. As células que apresentam núcleo definido são chamadas de:', 'a) Autotróficas', 'b) Heterotróficas', 'c) Eucarióticas', 'd) Procarióticas', 'c) Eucarióticas', 0xFF02A676);";
    await db.execute(sql1);

    sql1 =
        "INSERT INTO QUESTCITOLOGIA (id, title, a, b, c, d, answer, color) VALUES (2, '2) A Biologia Celular, ou citologia, é a parte da Biologia responsável por estudar o funcionamento das células e suas estruturas. Qual das alternativas abaixo indica corretamente o nome do pesquisador que denominou essas estruturas funcionais dos seres vivos de células?', 'a) Theodor Schwann', 'b) Robert Hooke', 'c) Rudolf Virchow', 'd) Walther Flemming', 'b) Robert Hooke', 0xFF008C72);";
    await db.execute(sql1);

    sql1 =
        "INSERT INTO QUESTCITOLOGIA (id, title, a, b, c, d, answer, color) VALUES (3, '3) A Teoria Celular pode ser resumida, atualmente, em três pontos principais. Analise e marque a alternativa que não apresenta uma afirmação relacionada com essa teoria.', 'a) Todos os seres vivos são formadas por uma ou mais células', 'b) Todas as células são formadas por membrana, citoplasma e núcleo', 'c) As células são as unidades funcionais dos organismos vivos', 'd) Uma célula só pode originar-se de outra existente', 'Letra B. Não se pode afirmar que todas as células possuem núcleo, pois as procariontes não possuem material genético delimitado por membrana nuclear.', 0xFF007369);";
    await db.execute(sql1);

    sql1 =
        "INSERT INTO QUESTCITOLOGIA (id, title, a, b, c, d, answer, color) VALUES (4, '4) Analise atentamente as alternativas seguintes e marque aquela que indica a função das mitocôndrias.', 'a) Realizam a respiração celular', 'b) Auxiliam na síntese de proteínas nas células', 'c) Responsáveis pela digestão intracelular', 'd) Realizam a fotossíntese', 'a) Realizam a respiração celular', 0xFF005A5B);";
    await db.execute(sql1);

    ///////////////////////////////////////////////

    String sql3 =
        'create table ABOUT (id INTEGER PRIMARY KEY, title varchar(100), image varchar(500), text varchar(500));';
    await db.execute(sql3);

    sql3 =
        "INSERT INTO ABOUT (id, text, title, image) VALUES (1, 'Learn It + é um aplicativo de estudos que ajuda os estudantes a ter uma melhor compreensão da disciplina de biologia. Nele, contém explicações de cada conteúdo, seja ele escrito ou por vídeo. Junto aos conteúdos vem exercícios que devem ser resolvidas para uma melhor fixação do seu aprendizado. Além disso, o app conta com uma parte premium, a qual quem assinar terá regalias e direitos a outros serviços como mais questões, por exemplo. Além do mais, o Learn conta com uma rede social própria onde os usuários podem interagir entre eles nas diversas postagens em seu chat e e que também conta com status(mas tudo conforme as regras). Pensando de uma forma diferente e menos cansativa de ensino, o aplicativo tem formas de ensino através de quiz, flashcards e muitos mais.', 'Sobre nós', 'https://ronaldo913.github.io/ImagensPMovel/images/logo.png');";
    await db.execute(sql3);

    sql3 =
        "INSERT INTO ABOUT (id, text, title, image) VALUES (2, 'Learn It + é um aplicativo de estudos que ajuda com muito orgulho os estudantes em sua jornada! É com muito prazer e alegria que o Learnit+ esta semana está completando 3 bimestres! Venha comemorar com a gente e aproveite as promoções!', 'Aniversário', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxlRvUK3BiBxUdqm9YrMJ7CDhsMmDnC0NkpQ&usqp=CAU');";
    await db.execute(sql3);

    ///////////////////////////////////////////////

    String sql4 =
        'create table USER (cpf INTEGER PRIMARY KEY, nome varchar(500), email varchar(100), username varchar(100), password varchar(100), sobrenome varchar(500), celular varchar(100), nascimento varchar(10));';
    await db.execute(sql4);

    sql4 =
        "INSERT INTO USER (cpf, nome, email, username, password, sobrenome, celular, nascimento) VALUES (12345678901, 'Tarsis', 'tarsis@email.com', 'tarsis123@email.com', 'tarsis123', 'Marinho', '82912345678', '01/01/1970');";
    await db.execute(sql4);

    ///////////////////////////////////////////////

    String sql5 =
        'create table CONTEUDO (paragrafo1 varchar(2000),paragrafo2 varchar(2000), titulo2 varchar(100), subtitulo varchar(100), paragrafo3 varchar(2000),subtitulo2 varchar(100), paragrafo4 varchar(2000), titulo3 varchar (100), paragrafo5 varchar (2000), subtitulo3 varchar (100), paragrafo6 varchar (2000), subtitulo4 varchar(100), paragrafo7  varchar (2000), paragrafo8 varchar (2000), subtitulo5 varchar (200), paragrafo9 varchar (2000), espaco1 varchar (2), imagem varchar (2000), espaco2 varchar (2));';
    await db.execute(sql5);

    sql5 =
        "INSERT INTO CONTEUDO(paragrafo1, paragrafo2, titulo2, subtitulo, paragrafo3, subtitulo2, paragrafo4, titulo3, paragrafo5, subtitulo3, paragrafo6, subtitulo4, paragrafo7, paragrafo8, subtitulo5 ,  paragrafo9, espaco1, imagem, espaco2) VALUES ('A citologia é onde as células são estudadas. A citologia passou a desenvolver-se como ciência em 1663, quando Robert Hooke cortou um pedaço de cortiça e observou ao microscópio.', 'Graças ao desenvolvimento da microscopia surgiu a teoria celular, onde há postulados importantes para o ramo da citoligia, como: Todos os seres vivos são constituídos por células, As atividades essenciais que caracterizam a vida ocorrem no interior das células, Novas células se formam pela divisão de células preexistentes através da divisão celular, A célula é a menor unidade da vida.','TIPOS DE CÉLULAS','PROCARIONTES', 'Esta tem como sua principal característica a ausencia da carioteca, assim sendo, o núcleo dessa célula não é individualizado. É importante destacar que as células procariontes são as células mais primitivas e que possuem estruturas celulares mais simples. Na reprodução as células procariontes não se reproduzem por mitose. Exemplo de célula procarionte: bactérias.', 'EUCARIONTES', 'Tais células são mais complaxas do que as procariontes. Ao contrário das procariontes, possuem carioteca individualizando o núcleo e também possuem vários tipos de organelas. Exemplos de células eucariontes: células animais, células vegetais','PARTES DA CÉLULA', 'As células eucariontes possuem partes morfológicas distintas. Suas principais partes são: membrana plasmática, citoplasma e núcleo celular.', 'MEMBRANA PLASMÁTICA', 'Também conhecida como membrana celular. Trata-se de uma estrutura fina e porosa. Sua função é proteger as estruturas celulares no momento em que serve de envoltório para todas as células. Ela atua como um filtro onde meio que decide o que poderá entrar, possibilitando a entrada de substâncias pequenas e impedindo ou dificultando a passagem de substâncias de grande porte, esse processo é nomeado de Permeabilidade Seletiva.', 'CITOPLASMA', 'No citoplasma será encotradas organelas celulares, onde é preenchido por uma matriz viscosa e semitransparente, o hialoplasma ou citosol. As organelas são pequenos órgãos da célula. Cada organela desempenha uma função distinta.', 'Organelas celulares: Mitocôndrias(realiza a respiração celular, que produz a maior parte da energia utilizada nas funções celulares), Retículo Endoplasmático(há 2 tipos de retículo endoplasmático, o liso e o rugoso), Complexo de Golgi (principais funções do complexo de golgi são são modificar, armazenar e exportar proteínas sintetizadas no retículo endoplasmático rugoso. Ele também origina os lisossomos e os acrossomos dos espermatozoides), Lisossomos (responsáveis pela digestão intracelular. Essas organelas atuam como sacos de enzimas digestivas, digerindo nutrientes e destruindo substâncias não desejadas), Ribossomos (auxiliar a síntese de proteínas nas células), Peroxissomos (a função dos peroxissomos é a oxidação de ácidos graxos para a síntese de colesterol e respiração celular).', 'NÚCLEO CELULAR','Nele é onde se encontra o DNA, o material genético do organismo. No núcleo ocorre a divisão celular, esse processo é extremamente importante para o crescimento e reprodução das células.', ' ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVsq0ESSVKM86Va0uG3y7PUDYSevpuNb1KmQ&usqp=CAU', ' ');";
    await db.execute(sql5);

    ////////////////////////////

    String sql6 =
        'create table FLASHCARD (id INTEGER PRIMARY KEY, title varchar(30), color varchar(50), page varchar(50));';
    await db.execute(sql6);

    sql6 =
        "INSERT INTO FLASHCARD(id, title, color, page) VALUES (1, 'Citologia', '0xFF02A676', 'FlashCitologia()');";
    await db.execute(sql6);

    sql6 =
        "INSERT INTO FLASHCARD(id, title, color, page) VALUES (2,'Embriologia','0xFF008C72', 'FlashCitologia()');";
    await db.execute(sql6);

    sql6 =
        "INSERT INTO FLASHCARD (id, title, color, page) VALUES (3,'Introdução à Biologia', '0xFF007369', 'FlashCitologia()');";
    await db.execute(sql6);

    sql6 =
        "INSERT INTO FLASHCARD (id, title, color, page) VALUES (4,'Genética', '0xFF005A5B', 'FlashCitologia()');";
    await db.execute(sql6);

    sql6 =
        "INSERT INTO FLASHCARD (id, title, color, page) VALUES (5,'Biofísica', '0xFF003840', 'FlashCitologia()');";
    await db.execute(sql6);

    sql6 =
        "INSERT INTO FLASHCARD (id, title, color, page) VALUES (6,'Botânica I (Morfologia e Anatomia Vegetal)', '0xFF003840', 'FlashCitologia()');";
    await db.execute(sql6);

    sql6 =
        "INSERT INTO FLASHCARD (id, title, color, page) VALUES (7,'Botânica II', '0xFF005A5B', 'FlashCitologia()');";
    await db.execute(sql6);

    sql6 =
        "INSERT INTO FLASHCARD (id, title, color, page) VALUES (8,'Anatomia Humana', '0xFF007369', 'FlashCitologia()');";
    await db.execute(sql6);

    sql6 =
        "INSERT INTO FLASHCARD (id, title, color, page) VALUES (9,'Biologia Celular', '0xFF008C72', 'FlashCitologia()');";
    await db.execute(sql6);

    sql6 =
        "INSERT INTO FLASHCARD (id, title, color, page) VALUES (10,'Ecologia Geral', '0xFF02A676', 'FlashCitologia()');";
    await db.execute(sql6);

    sql6 =
        "INSERT INTO FLASHCARD (id, title, color, page) VALUES (11,'Histologia', '0xFF02A676', 'FlashCitologia()');";
    await db.execute(sql6);

    ////////////////////////////

    String sql7 =
        'create table CONTENT (id INTEGER PRIMARY KEY, title varchar(30), color varchar(50), page varchar(50));';
    await db.execute(sql7);

    sql7 =
        "INSERT INTO CONTENT(id, title, color, page) VALUES (1, 'Citologia', '0xFF02A676', 'TelaAssuntos()');";
    await db.execute(sql7);

    sql7 =
        "INSERT INTO CONTENT(id, title, color, page) VALUES (2,'Embriologia','0xFF008C72', 'TelaAssuntos()');";
    await db.execute(sql7);

    sql7 =
        "INSERT INTO CONTENT (id, title, color, page) VALUES (3,'Introdução à Biologia', '0xFF007369', 'TelaAssuntos()');";
    await db.execute(sql7);

    sql7 =
        "INSERT INTO CONTENT (id, title, color, page) VALUES (4,'Genética', '0xFF005A5B', 'TelaAssuntos()');";
    await db.execute(sql7);

    sql7 =
        "INSERT INTO CONTENT (id, title, color, page) VALUES (5,'Biofísica', '0xFF003840', 'TelaAssuntos()');";
    await db.execute(sql7);

    sql7 =
        "INSERT INTO CONTENT(id, title, color, page) VALUES (6,'Botânica I (Morfologia e Anatomia Vegetal)', '0xFF003840', 'TelaAssuntos()');";
    await db.execute(sql7);

    sql7 =
        "INSERT INTO CONTENT(id, title, color, page) VALUES (7,'Botânica II', '0xFF005A5B', 'TelaAssuntos()');";
    await db.execute(sql7);

    sql7 =
        "INSERT INTO CONTENT(id, title, color, page) VALUES (8,'Anatomia Humana', '0xFF007369', 'TelaAssuntos()');";
    await db.execute(sql7);

    sql7 =
        "INSERT INTO CONTENT(id, title, color, page) VALUES (9,'Biologia Celular', '0xFF008C72', 'TelaAssuntos()');";
    await db.execute(sql7);

    sql7 =
        "INSERT INTO CONTENT(id, title, color, page) VALUES (10,'Ecologia Geral', '0xFF02A676', 'TelaAssuntos()');";
    await db.execute(sql7);

    sql7 =
        "INSERT INTO CONTENT(id, title, color, page) VALUES (11,'Histologia', '0xFF02A676', 'TelaAssuntos()');";
    await db.execute(sql7);

    ////////////////////////////

    String sql8 =
        'create table QUESTS(id INTEGER PRIMARY KEY, title varchar(30), color varchar(50), page varchar(50));';
    await db.execute(sql8);

    sql8 =
        "INSERT INTO QUESTS(id, title, color, page) VALUES (1, 'Citologia', '0xFF02A676', 'QuestPage()');";
    await db.execute(sql8);

    sql8 =
        "INSERT INTO QUESTS(id, title, color, page) VALUES (2,'Embriologia','0xFF008C72', 'QuestPage()');";
    await db.execute(sql8);

    sql8 =
        "INSERT INTO QUESTS(id, title, color, page) VALUES (3,'Introdução à Biologia', '0xFF007369', 'QuestPage()');";
    await db.execute(sql8);

    sql8 =
        "INSERT INTO QUESTS(id, title, color, page) VALUES (4,'Genética', '0xFF005A5B', 'QuestPage()');";
    await db.execute(sql8);

    sql8 =
        "INSERT INTO QUESTS(id, title, color, page) VALUES (5,'Biofísica', '0xFF003840', 'QuestPage()');";
    await db.execute(sql8);

    sql8 =
        "INSERT INTO QUESTS(id, title, color, page) VALUES (6,'Botânica I (Morfologia e Anatomia Vegetal)', '0xFF003840', 'QuestPage()');";
    await db.execute(sql8);

    sql8 =
        "INSERT INTO QUESTS(id, title, color, page) VALUES (7,'Botânica II', '0xFF005A5B', 'QuestPage()');";
    await db.execute(sql8);

    sql8 =
        "INSERT INTO QUESTS(id, title, color, page) VALUES (8,'Anatomia Humana', '0xFF007369', 'QuestPage()');";
    await db.execute(sql8);

    sql8 =
        "INSERT INTO QUESTS(id, title, color, page) VALUES (9,'Biologia Celular', '0xFF008C72', 'QuestPage()');";
    await db.execute(sql8);

    sql8 =
        "INSERT INTO QUESTS(id, title, color, page) VALUES (10,'Ecologia Geral', '0xFF02A676', 'QuestPage()');";
    await db.execute(sql8);

    sql8 =
        "INSERT INTO QUESTS(id, title, color, page) VALUES (11,'Histologia', '0xFF02A676', 'QuestPage()');";
    await db.execute(sql8);

    ///////////////////////////////////////

    String sql9 =
        'create table PACOTES (id INTEGER PRIMARY KEY, imagem varchar(800), redacao integer, titulo varchar(100), desconto integer, numParcelas integer, precoAntigo real, precoAtual real, aula integer, exercicio integer, horas integer, duvida integer);';
    await db.execute(sql9);

    sql9 =
        "INSERT INTO PACOTES (id, imagem, redacao, titulo, desconto, numParcelas, precoAntigo, precoAtual, aula, exercicio, horas, duvida) VALUES (1, 'https://ronaldo913.github.io/ImagensPMovel/images/foco.png', 1, 'Pacote Foco', 10, 6, 19.90, 9.90, 100, 300, 10, 0);";
    await db.execute(sql9);

    sql9 =
        "INSERT INTO PACOTES (id, imagem, redacao, titulo, desconto, numParcelas, precoAntigo, precoAtual, aula, exercicio, horas, duvida) VALUES (2, 'https://ronaldo913.github.io/ImagensPMovel/images/avan%C3%A7ado.png', 3, 'Pacote Médio', 10, 8, 35.00, 20.00, 150, 500, 15, 1);";
    await db.execute(sql9);

    sql9 =
        "INSERT INTO PACOTES (id, imagem, redacao, titulo, desconto, numParcelas, precoAntigo, precoAtual, aula, exercicio, horas, duvida) VALUES (3, 'https://ronaldo913.github.io/ImagensPMovel/images/learnmed.png', 5, 'Pacote LearnMed', 10, 10, 50.00, 30.00, 200, 500, 20, 3);";
    await db.execute(sql9);

    //////////////////////////////////

    String sql10 =
        'create table FLASHCARDCITOLOGIA (id INTEGER PRIMARY KEY, resposta varchar(100), pergunta varchar(100));';
    await db.execute(sql10);

    sql10 =
        "INSERT INTO FLASHCARDCITOLOGIA (id, resposta, pergunta) VALUES (1, 'O que é a citologia?', 'É o estudo das células.');";
    await db.execute(sql10);

    sql10 =
        "INSERT INTO FLASHCARDCITOLOGIA (id, resposta, pergunta) VALUES (2, 'Em que ano a citologia passou a ser considerada ciência?', '1663.');";
    await db.execute(sql10);

    sql10 =
        "INSERT INTO FLASHCARDCITOLOGIA (id, resposta, pergunta) VALUES (3, 'Quais e quantos são os tipos de células', 'Dois. Eucariontes e procariontes.');";
    await db.execute(sql10);

    sql10 =
        "INSERT INTO FLASHCARDCITOLOGIA (id, resposta, pergunta) VALUES (4, 'Em que ano a citologia passou a ser considerada ciência?', '1663.');";
    await db.execute(sql10);

    sql10 =
        "INSERT INTO FLASHCARDCITOLOGIA (id, resposta, pergunta) VALUES (5, 'Quais e quantos são os tipos de células', 'Dois. Eucariontes e procariontes.');";
    await db.execute(sql10);

    sql10 =
        "INSERT INTO FLASHCARDCITOLOGIA (id, resposta, pergunta) VALUES (6, 'Em que ano a citologia passou a ser considerada ciência?', '1663.');";
    await db.execute(sql10);

    sql10 =
        "INSERT INTO FLASHCARDCITOLOGIA (id, resposta, pergunta) VALUES (7, 'Quais e quantos são os tipos de células', 'Dois. Eucariontes e procariontes.');";
    await db.execute(sql10);

    sql10 =
        "INSERT INTO FLASHCARDCITOLOGIA (id, resposta, pergunta) VALUES (8, 'Em que ano a citologia passou a ser considerada ciência?', '1663.');";
    await db.execute(sql10);

    sql10 =
        "INSERT INTO FLASHCARDCITOLOGIA (id, resposta, pergunta) VALUES (9, 'Quais e quantos são os tipos de células', 'Dois. Eucariontes e procariontes.');";
    await db.execute(sql10);

    ///////////////////////////////////////

    String sql11 =
        'create table crono (id INTEGER PRIMARY KEY, title varchar(80), hour integer, minute integer, day varchar(50), color varchar(50));';
    await db.execute(sql11);

    sql11 =
        "INSERT INTO crono (id, title, hour, minute, day, color) VALUES (1, 'Estudar Embriologia', 12 , 30, 'Terça', '0xFF02A676');";
    await db.execute(sql11);

    sql11 =
        "INSERT INTO crono (id, title, hour, minute, day, color) VALUES (2, 'Estudar Citologia',13 , 45, 'Terça', '0xFF008C72');";
    await db.execute(sql11);

    sql11 =
        "INSERT INTO crono (id, title, hour, minute, day, color) VALUES (3, 'Estudar Histologia',14 , 55, 'Terça', '0xFF007369');";
    await db.execute(sql11);

    sql11 =
        "INSERT INTO crono (id, title, hour, minute, day, color) VALUES (4, 'Estudar Genetica',15 , 20, 'Terça', '0xFF005A5B');";
    await db.execute(sql11);

    ///////////////////////////////

    String sql12 =
        'create table SETTING (id INTEGER PRIMARY KEY, title title(50), page varchar(50), color varchar(50));';
    await db.execute(sql12);

    sql12 =
        "INSERT INTO SETTING (id, title, page, color) VALUES (1, 'Gerenciar meus dados', 'ManageData()', '0xFF02A676');";
    await db.execute(sql12);

    sql12 =
        "INSERT INTO SETTING (id, title, page, color) VALUES (2, 'Dispositivos conectados', 'ManageData()', '0xFF008C72');";
    await db.execute(sql12);

    sql12 =
        "INSERT INTO SETTING (id, title, page, color) VALUES (3, 'Mudar senha', 'ManageData()', '0xFF007369');";
    await db.execute(sql12);

    sql12 =
        "INSERT INTO SETTING (id, title, page, color) VALUES (4, 'Tema', 'ManageData()', '0xFF005A5B');";
    await db.execute(sql12);

    sql12 =
        "INSERT INTO SETTING (id, title, page, color) VALUES (5, 'idioma', 'ManageData()', '0xFF007369');";
    await db.execute(sql12);

    sql12 =
        "INSERT INTO SETTING (id, title, page, color) VALUES (6, 'Sistema web', 'ManageData()', '0xFF003840');";
    await db.execute(sql12);

    sql12 =
        "INSERT INTO SETTING (id, title, page, color) VALUES (7, 'Política e privacidade', 'ManageData()', '0xFF005A5B');";
    await db.execute(sql12);

    sql12 =
        "INSERT INTO SETTING (id, title, page, color) VALUES (8, 'Deletar conta', 'ManageData()', '0xFF007369');";
    await db.execute(sql12);
  }
}
