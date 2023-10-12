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
          children: [
            // Adicionando Container envolvendo o Text
            Container(
              padding: EdgeInsets.all(16), // Adicionando um espaçamento interno
              decoration: BoxDecoration(
                color:
                    Color.fromARGB(115, 180, 180, 180), // Cor do fundo da caixa
                borderRadius: BorderRadius.circular(8), // Borda arredondada
              ),
              child: const Column(
                children: [
                  Text(
                    'Lucelho Cristiano Vieira Da Silva',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 251, 0), // Amarelo
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 16), // Adicionando um espaço entre os textos
                  Text(
                    '"Mas pra quem tem pensamento forte, o impossível e só questão de opinião."\n'
                    '\n'
                    '"A coragem não é a ausência do medo, mas a capacidade de enfrentá-lo."\n'
                    '\n'
                    'Lei de Leblanc "Mais tarde é igual a nunca."\n'
                    '\n'
                    '"A vida é feita de escolhas. Quando você dá um passo à frente, inevitavelmente algo fica para trás."\n'
                    '\n'
                    '"A maior glória em viver não está em nunca cair, mas em levantar cada vez que caímos."\n'
                    '\n'
                    '"Acredite em si próprio e chegará um dia em que os outros não terão outra escolha senão acreditar com você."',
                    style: TextStyle(
                      color: Colors.white, // Branco
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(184, 44, 44, 44),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'Modo Escuro',
        child: Icon(Icons.brightness_2),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
