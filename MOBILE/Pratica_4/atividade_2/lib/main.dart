import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController num01Controller = TextEditingController();
  TextEditingController num02Controller = TextEditingController();
  String resp = "";
  somar() {
    int num01 = int.parse(num01Controller.text);
    int num02 = int.parse(num02Controller.text);
    int soma = num01 + num02;
    resp = '$num01 + $num02 = $soma';
    return resp;
  }

  subtrair() {
    int num01 = int.parse(num01Controller.text);
    int num02 = int.parse(num02Controller.text);
    int sub = num01 - num02;
    resp = '$num01 - $num02 = $sub';
    return resp;
  }

  multiplicar() {
    int num01 = int.parse(num01Controller.text);
    int num02 = int.parse(num02Controller.text);
    int mult = num01 * num02;
    resp = '$num01 * $num02 = $mult';
    return resp;
  }

  dividir() {
    double num01 = double.parse(this.num01Controller.text);
    double num02 = double.parse(this.num02Controller.text);
    double result = num01 / num02;
    resp = '$num01 / $num02 = ' + result.toStringAsFixed(2);
    return resp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Inicial'),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: TextField(
              controller: num01Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num01Controller.clear(),
                  icon: const Icon(Icons.clear),
                ),
                border: const OutlineInputBorder(),
                labelText: 'informe o primeiro número',
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: TextField(
              controller: num02Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num02Controller.clear(),
                  icon: const Icon(Icons.clear),
                ),
                border: const OutlineInputBorder(),
                labelText: 'informe o segundo número',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //somar
              Container(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    print(somar());
                    setState(somar);
                  },
                  child: const Text(
                    '+',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),

              //subtrair
              Container(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    print(subtrair());
                    setState(subtrair);
                  },
                  child: const Text(
                    '-',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),

              //multiplicar
              Container(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    print(multiplicar());
                    setState(multiplicar);
                  },
                  child: const Text(
                    '*',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),

              //dividir
              Container(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    print(dividir());
                    setState(dividir);
                  },
                  child: const Text(
                    '/',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(
            resp,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
