import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: PrimeiraRota(),
        debugShowCheckedModeBanner: false,
      ),
    );

class PrimeiraRota extends StatefulWidget {
  @override
  PrimeiraRotaState createState() {
    return PrimeiraRotaState();
  }
}

class PrimeiraRotaState extends State<PrimeiraRota> {
  String mensagem = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primeira Rota'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              mensagem,
              style: const TextStyle(
                fontSize: 40,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              child: const Text('Ir para a Segunda Rota'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SegundaRota(),
                  ),
                ).then(
                  (resposta) => setState(
                    () => mensagem = resposta,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController num1Controller = TextEditingController();
    TextEditingController num2Controller = TextEditingController();
    String resp = '';

    String somar() {
      double? num1 = double.tryParse(num1Controller.text);
      double? num2 = double.tryParse(num2Controller.text);
      double soma = (num1 ?? 0) + (num2 ?? 0);
      resp = '$num1 + $num2 = $soma';
      return resp;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Segunda Rota"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: TextField(
                controller: num1Controller,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => num1Controller.clear(),
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
                controller: num2Controller,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => num2Controller.clear(),
                    icon: const Icon(Icons.clear),
                  ),
                  border: const OutlineInputBorder(),
                  labelText: 'informe o segundo número',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                String response = somar();
                Navigator.pop(context, response);
              },
              child: const Text('Voltar para a Primeira Rota'),
            ),
          ],
        ),
      ),
    );
  }
}
