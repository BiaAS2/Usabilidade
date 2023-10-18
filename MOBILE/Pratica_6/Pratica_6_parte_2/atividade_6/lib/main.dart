import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Carrossel(),
    debugShowCheckedModeBanner: false,
  ),
);

class Carrossel extends StatefulWidget {
  @override
  CarrosselState createState() => CarrosselState();
}

class CarrosselState extends State<Carrossel> {
  int indice = 0;
  List<Map<String, String>> imagens = [
    {
      'arquivo': 'assets/img/carro.jpg',
      'titulo': 'Carro',
      'subtitulo': 'Carro',
      'descricao': 'Um sedan elegante e imponente, com uma pintura preta reluzente que reflete a luz como o céu noturno. Seu exterior escuro contrasta perfeitamente com sua presença marcante e interior luxuoso.'
    },
    {
      'arquivo': 'assets/img/cidade.jpg',
      'titulo': 'Cidade',
      'subtitulo': 'Los Angeles',
      'descricao': 'Los Angeles, conhecida pela abreviação LA, é a maior cidade do estado da Califórnia e a segunda mais populosa dos Estados Unidos, depois de Nova York. É famosa por sua cultura cinematográfica e entretenimento, especialmente por ser o lar de Hollywood, um dos centros de entretenimento mais proeminentes do mundo.'
    },
    {
      'arquivo': 'assets/img/poster.jpg',
      'titulo': 'Poster',
      'subtitulo': 'Poster MadMax',
      'descricao': 'Um "poster" do filme "Mad Max" geralmente inclui imagens do personagem principal, Max Rockatansky, interpretado por Mel Gibson no filme original de 1979 e por Tom Hardy no filme mais recente "Mad Max: Fury Road". Além disso, os pôsteres costumam retratar veículos futuristas e desérticos, paisagens áridas e imagens de ação do filme.'
    },
    {
      'arquivo': 'assets/img/rodaGigante.jpg',
      'titulo': 'Parque',
      'subtitulo': 'Roda-Gigante',
      'descricao': 'Uma roda gigante é uma grande estrutura em forma de roda, geralmente composta por gôndolas ou cabines para transportar passageiros em um passeio circular com vistas panorâmicas. Essas atrações são comuns em parques de diversões, parques temáticos e feiras ao redor do mundo, oferecendo aos passageiros uma experiência emocionante e uma vista deslumbrante da área circundante.'
    },
  ];

  void anterior() => setState(() => indice = indice > 0 ? indice - 1 : imagens.length - 1);

  void posterior() => setState(() => indice = indice < imagens.length - 1 ? indice + 1 : 0);

  void verDetalhes(BuildContext context, int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetalhesImagem(
          titulo: imagens[index]['titulo']!,
          subtitulo: imagens[index]['subtitulo']!,
          descricao: imagens[index]['descricao']!,
        ),
      ),
    );
  }

  Stack imagem() => Stack(
        children: [
          GestureDetector(
            onTap: () {
              verDetalhes(context, indice);
            },
            child: Container(
              height: 400,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                image: DecorationImage(
                  image: AssetImage(imagens[indice]['arquivo']!),
                  fit: BoxFit.cover,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 2,
                    blurRadius: 5,
                  )
                ],
              ),
            ),
          ),

          Positioned(
            top: 375,
            left: 25,
            right: 25,
            child: PainelPontos(
              numeroPontos: imagens.length,
              indice: indice,
            ),
          ),
        ],
      );

  Row cursor() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              onPressed: anterior,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(13),
              ),
              child: const Icon(Icons.arrow_left),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              onPressed: posterior,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(13),
              ),
              child: const Icon(Icons.arrow_right),
            ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrossel'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          imagem(),
          cursor(),
        ],
      ),
    );
  }
}

class PainelPontos extends StatelessWidget {
  final int? numeroPontos;
  final int? indice;
  const PainelPontos({this.numeroPontos, this.indice});
  Widget fotoInativa() {
    return Padding(
      padding: const EdgeInsets.only(left: 3, right: 3),
      child: Container(
        height: 8,
        width: 8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 0.3,
              blurRadius: 3,
            )
          ],
        ),
      ),
    );
  }

  Widget fotoAtiva() {
    return Padding(
      padding: const EdgeInsets.only(left: 3, right: 3),
      child: Container(
        height: 11,
        width: 11,
        decoration: BoxDecoration(
          color: Colors.amberAccent,
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(
              color: Colors.orangeAccent,
              spreadRadius: 0.3,
              blurRadius: 3,
            )
          ],
        ),
      ),
    );
  }

  List<Widget> gerarPainelPontos() {
    List<Widget> pontos = [];
    for (int i = 0; i < numeroPontos!; i++) {
      pontos.add(i == indice ? fotoAtiva() : fotoInativa());
    }
    return pontos;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: gerarPainelPontos(),
      ),
    );
  }
}

class DetalhesImagem extends StatelessWidget {
  final String titulo;
  final String subtitulo;
  final String descricao;

  DetalhesImagem({required this.titulo, required this.descricao, required this.subtitulo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
        automaticallyImplyLeading: false,
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(80),
              child: Text(
                subtitulo,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(left: 70, right: 70, bottom: 70),
              child: Text(
                descricao,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: Padding(
        padding: EdgeInsets.all(16.0), // Adicione as margens desejadas aqui
        child: FloatingActionButton(
          onPressed: () {
            // Voltar para a primeira página
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
          backgroundColor: Colors.blue,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}