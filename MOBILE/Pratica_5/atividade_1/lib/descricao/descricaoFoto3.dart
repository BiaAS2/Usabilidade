import 'package:flutter/material.dart';

class Descricao3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Praia"),
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false, // Oculta a seta de retorno
      ),

      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(80),
              child: const Text(
                'Praia, Maldivas',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            
            Container(
              margin: const EdgeInsets.only(left: 70, right: 70, bottom: 70),
              child: const Text(
                  'As praias das Maldivas são conhecidas por sua areia branca, água morna e cristalina que corresponde a 90% do território do local. Elas são localizadas em ilhas que estão espalhadas por 90 mil km², entre duas fileiras de atóis do Oceano Índico.',
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