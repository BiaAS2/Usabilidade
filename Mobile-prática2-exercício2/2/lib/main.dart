import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text('Primeiro Site'),
      ),

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Beatriz Alves;\n" 'Lucelho Cristiano;\n' 'Pedro Henrique;\n' 
              'Bianca Mayra;\n' 'João Vitor;\n' 'Gabriel Anjos;\n' 'Rafael Prazeres.', 
                style: TextStyle(
                color: Colors.yellow,
                fontSize: 40,
              ),
            ),
          ],
        ),
      ),

      backgroundColor: Colors.blue[900],
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'Modo Escuro',
        child: Icon(Icons.brightness_2),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
