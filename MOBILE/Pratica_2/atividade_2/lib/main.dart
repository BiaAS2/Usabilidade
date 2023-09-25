import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Home(),
        debugShowCheckedModeBanner: false,
      ),
    );

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('Página Inicial'),
      ),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //1ª imagem
            Expanded(
              child: FittedBox(
                fit: BoxFit.contain,
                child: Image(
                  image: NetworkImage(
                    'https://picsum.photos/250?image=10',
                  ),
                ),
              ),
            ),

            //2ª imagem
            Expanded(
              child: FittedBox(
                fit: BoxFit.contain,
                child: Image(
                  image: NetworkImage(
                    'https://picsum.photos/250?image=25',
                  ),
                ),
              ),
            ),

            //3ª imagem
            Expanded(
              child: FittedBox(
                fit: BoxFit.contain,
                child: Image(
                  image: NetworkImage(
                    'https://picsum.photos/250?image=15',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'Exemplo de botão',
        child: Icon(Icons.add),
      ),
    );
  }
}
