import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home(), debugShowCheckedModeBanner: false,));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('Página Inicial'),
      ),

      body: const Center(
        child: Text(
          'Olá, Mundo!!!',
          style: TextStyle(color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          ), 
        )
      ),
      
      backgroundColor: Colors.blue[900],
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'Exemplo de botão',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}