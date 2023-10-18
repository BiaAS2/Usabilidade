import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ));

class Home extends StatefulWidget {
  @override
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController temperaturaCelsiusController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Graus Celsius'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: TextField(
                controller: temperaturaCelsiusController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => temperaturaCelsiusController.clear(),
                    icon: const Icon(Icons.clear),
                  ),
                  border: const OutlineInputBorder(),
                  labelText: 'Temperatura em graus Celsius',
                ),
              ),
            ),

            Container(
              height: 35,
              child: ElevatedButton(
                onPressed: () {
                  double celsius =
                      double.tryParse(temperaturaCelsiusController.text) ?? 0;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultadoConversao(
                        argumentos:
                            ArgumentosDaRota('Graus Fahrenheit', celsius),
                      ),
                    ),
                  );
                },
                child: const Text(
                  'Converter',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ResultadoConversao extends StatelessWidget {
  final ArgumentosDaRota argumentos;

  ResultadoConversao({required this.argumentos});

  double converter(double celsius) => celsius * 1.8 + 32;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(argumentos.titulo),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(70),
                padding: const EdgeInsets.all(70),
                child: Text(
                  'Graus Celsius: ${argumentos.celsius.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.green,
                  ),
                ),
              ),

              Text(
                'Graus Fahrenheit: ${converter(argumentos.celsius).toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ArgumentosDaRota {
  String titulo;
  double celsius;
  ArgumentosDaRota(this.titulo, this.celsius);
}