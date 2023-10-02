import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  int numeroVezes = 0;
  String mensagem = "";

  void cliqueDoBotao() {
    numeroVezes = numeroVezes + 1;
    mensagem = "Esse número é ${numeroVezes % 2 == 0 ? "par" : "ímpar"}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Página Inicial"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "Número de vezes em que o botão foi pressionado: $numeroVezes. \n$mensagem"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(cliqueDoBotao);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
