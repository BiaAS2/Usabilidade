import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController comprimentoController = TextEditingController();
  TextEditingController larguraController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  String resp = "";

  //método pra calcular o volume
  calcularVol() {
    double comprimento = double.parse(comprimentoController.text);
    double largura = double.parse(larguraController.text);
    double altura = double.parse(alturaController.text);
    double volume = comprimento * largura * altura;
    resp = "O volume da forma é: " + volume.toStringAsFixed(2);
    return resp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora de Volume'),
      ),
      body: Column(
        children: [
          //container 1
          Container(
            margin: const EdgeInsets.all(10),
            child: TextField(
              controller: comprimentoController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => comprimentoController.clear(),
                  icon: const Icon(Icons.clear),
                ),
                border: const OutlineInputBorder(),
                labelText: 'Informe o comprimento',
              ),
            ),
          ),

          //container 2
          Container(
            margin: const EdgeInsets.all(10),
            child: TextField(
              controller: larguraController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => larguraController.clear(),
                  icon: const Icon(Icons.clear),
                ),
                border: const OutlineInputBorder(),
                labelText: 'Informe a largura',
              ),
            ),
          ),

          //container 3
          Container(
            margin: const EdgeInsets.all(10),
            child: TextField(
              controller: alturaController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => alturaController.clear(),
                  icon: const Icon(Icons.clear),
                ),
                border: const OutlineInputBorder(),
                labelText: 'Informe a altura',
              ),
            ),
          ),

          //botão que chama o método calcular
          ElevatedButton(
            onPressed: () {
              print(calcularVol());
              setState(calcularVol);
            },
            child: const Text(
              'Calcular',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),

          //resposta final
          Text(
            resp,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.lightBlue,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
