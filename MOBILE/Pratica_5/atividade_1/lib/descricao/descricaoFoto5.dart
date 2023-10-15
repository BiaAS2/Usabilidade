import 'package:flutter/material.dart';

class Descricao5 extends StatelessWidget {
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
                'Praia do Caribe',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            
            Container(
              margin: const EdgeInsets.only(left: 70, right: 70, bottom: 70),
              child: const Text(
                  'O Caribe, também chamado Caraíbas e América Caribenha, é uma região do continente americano formada pelo Mar do Caribe, suas ilhas e Estados insulares. Também é chamado de Antilhas ou Índias Ocidentais, nome originado pela crença inicial europeia de que o continente americano fosse a Índia.',
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