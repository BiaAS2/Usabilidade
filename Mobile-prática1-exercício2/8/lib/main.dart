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
        leading: const Icon(Icons.search),
        title: const Text('Pesquisar Imagem'),
        backgroundColor: Color.fromARGB(255, 71, 40, 184),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                'https://media.giphy.com/media/pt0EKLDJmVvlS/giphy.gif'),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 191, 152, 255),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'Baixar Imagem',
        child: Icon(Icons.file_download),
        backgroundColor: Color.fromARGB(255, 38, 43, 114),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
