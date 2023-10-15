import 'package:flutter/material.dart';

class Descricao9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Plantas"),
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false, // Oculta a seta de retorno
      ),

      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(80),
              child: const Text(
                'Folhagem',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            
            Container(
              margin: const EdgeInsets.only(left: 70, right: 70, bottom: 70),
              child: const Text(
                  'Em botânica, a folha são órgãos das plantas especializados na captação de luz e trocas gasosas com a atmosfera para realizar a fotossíntese, transpiração, gutação e respiração.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 20,
                  )),
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