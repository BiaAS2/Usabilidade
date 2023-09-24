import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Home(),
        debugShowCheckedModeBanner: false,
      ),
    );

class Home extends StatelessWidget {
  final String nome = "Ana", dia = "quinta-feira";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('Página Inicial'),
      ),
      body: Center(
        child: RichText(
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "Olá, ",
            style: const TextStyle(
              color: Colors.green,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.white,
            ),
            children: <TextSpan>[
              TextSpan(
                  text: nome,
                  style: const TextStyle(
                    color: Colors.blue,
                    backgroundColor: Color.fromARGB(255, 139, 230, 142),
                  )),
              TextSpan(
                text: '!',
              ),
              TextSpan(
                text: '\nHoje é $dia!',
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.yellow,
                ),
              ),
              const TextSpan(
                text: ' \nBom dia!',
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'Exemplo de botão',
        child: Icon(Icons.add),
      ),
    );
  }
}
