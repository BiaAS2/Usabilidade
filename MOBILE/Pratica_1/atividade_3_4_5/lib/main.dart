import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Minha Aplicação Flutter'),
        ),
        body: const Center(
          child: Text(
            'Olá, mundo!',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Color(0xFF000000),
              decoration: TextDecoration.underline, // Decoração (sublinhado)
              decorationColor: Color(0xFFFF0202), // Cor da decoração,
            ),
          ),
        ),
      ),
    );
  }
}

