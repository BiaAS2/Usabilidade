import 'package:flutter/material.dart';

class Descricao extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;

  Descricao(
      {required this.title, required this.subtitle, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(80),
              child: Text(
                subtitle,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(left: 70, right: 70, bottom: 70),
              child: Text(
                description,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: Padding(
        padding: EdgeInsets.all(16.0), // Adicione as margens desejadas aqui
        child: FloatingActionButton(
          onPressed: () {
            // Voltar para a primeira página
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
          backgroundColor: Colors.green,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}