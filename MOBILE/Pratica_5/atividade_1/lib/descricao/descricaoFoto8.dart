import 'package:flutter/material.dart';

class Descricao8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Montanha"),
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false, // Oculta a seta de retorno
      ),

      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(80),
              child: const Text(
                'Monte Cairo',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            
            Container(
              margin: const EdgeInsets.only(left: 70, right: 70, bottom: 70),
              child: const Text(
                  'O monte Cairo é uma montanha situada na região do Lácio, Itália. Tem 1 669 metros de altitude. Seu nome latino é Mons Clarius, assim denominado pois ali havia um templo dedicado a Apolo (Clarius) onde hoje está a Abadia de Montecassino.',
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