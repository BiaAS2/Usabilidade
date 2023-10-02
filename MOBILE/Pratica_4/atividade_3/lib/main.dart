import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  String resp = "";

  //método pra calcular IMC
  calcular() {
    double peso = double.parse(pesoController.text);
    double altura = double.parse(alturaController.text);
    double imc = peso / (altura * altura);
    if (imc < 16) {
      resp = "Seu Índice de Massa Corporal é: " +
          imc.toStringAsFixed(2) +
          "\nMagreza Grave!";
    } else if (imc >= 16 && imc < 17) {
      resp = "Seu Índice de Massa Corporal é: " +
          imc.toStringAsFixed(2) +
          "\nMagreza Moderada!";
    } else if (imc >= 17 && imc < 18.5) {
      resp = "Seu Índice de Massa Corporal é: " +
          imc.toStringAsFixed(2) +
          "\nMagreza Leve!";
    } else if (imc >= 18.5 && imc < 25) {
      resp = "Seu Índice de Massa Corporal é: " +
          imc.toStringAsFixed(2) +
          "\nSaudável!";
    } else if (imc >= 25 && imc < 30) {
      resp = "Seu Índice de Massa Corporal é: " +
          imc.toStringAsFixed(2) +
          "\Sobrepeso!";
    } else if (imc >= 30 && imc < 35) {
      resp = "Seu Índice de Massa Corporal é: " +
          imc.toStringAsFixed(2) +
          "\Obesidade Grau 1!";
    } else if (imc >= 35 && imc < 40) {
      resp = "Seu Índice de Massa Corporal é: " +
          imc.toStringAsFixed(2) +
          "\Obesidade Grau 2 (Severa)!!";
    } else if (imc >= 40) {
      resp = "Seu Índice de Massa Corporal é: " +
          imc.toStringAsFixed(2) +
          "\nObesidade Grau 3 (Mórbida)!";
    }
    return resp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora de IMC'),
      ),
      body: Column(
        children: [
          //container 1
          Container(
            margin: const EdgeInsets.all(10),
            child: TextField(
              controller: pesoController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => pesoController.clear(),
                  icon: const Icon(Icons.clear),
                ),
                border: const OutlineInputBorder(),
                labelText: 'Informe seu peso',
              ),
            ),
          ),

          //container 2
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
                labelText: 'Informe sua altura',
              ),
            ),
          ),

          //botão chamando o método de calcular
          ElevatedButton(
            onPressed: () {
              print(calcular());
              setState(calcular);
            },
            child: const Text(
              'Calcular',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),

          //resposta
          Text(
            resp,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
