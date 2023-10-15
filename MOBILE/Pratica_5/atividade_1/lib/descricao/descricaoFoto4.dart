import 'package:flutter/material.dart';

class Descricao4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Deserto"),
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false, // Oculta a seta de retorno
      ),

      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(80),
              child: const Text(
                'Deserto do Saara',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            
            Container(
              margin: const EdgeInsets.only(left: 70, right: 70, bottom: 70),
              child: const Text(
                  'O Deserto do Saara ou Deserto do Sara ou Deserto do Sáara é conhecido por ser o maior deserto quente do mundo. Oficialmente, é o terceiro maior deserto da Terra, logo após a Antártida e o Ártico, pois estas duas também são consideradas desertos.',
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