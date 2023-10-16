import 'package:flutter/material.dart';

class SegundaTela extends StatelessWidget {
  final String nome;
  SegundaTela(this.nome);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Inicial'),
        backgroundColor: Color.fromARGB(255, 116, 36, 246),
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://media.giphy.com/media/7VzgMsB6FLCilwS30v/giphy.gif'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Center(
                  child: Text(
                    'Bem Vindo(a), $nome!!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(30),
                  padding: EdgeInsets.all(50),
                  alignment: Alignment.center,
                  constraints: const BoxConstraints.tightForFinite(
                    height: 200,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Text(
                      'Lorem ipsum dolor sit amet. Et culpa quasi in nisi exercitationem est veritatis voluptatum sit exercitationem dolor qui incidunt similique vel ipsam dolore. In recusandae omnis est omnis quod et obcaecati quas est velit culpa nam facere harum sed quia similique. Et voluptas quaerat id natus consequatur qui animi temporibus est nemo expedita. Est illo perspiciatis cum dolor voluptas aut mollitia voluptates et delectus molestiae.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}