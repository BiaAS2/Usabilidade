import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mensagem Centralizada'),
        ),
        body: Center(
          child: Text(
            'Olá, mundo!',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Color.fromARGB(255, 33, 47, 243),
              decoration: TextDecoration.underline, // Decoração (sublinhado)
              decorationColor:
                  Color.fromARGB(255, 110, 13, 13), // Cor da decoração,
            ),
          ),
        ),
      ),
    );
  }
}
