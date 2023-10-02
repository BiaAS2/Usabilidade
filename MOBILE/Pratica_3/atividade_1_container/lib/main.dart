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
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 255, 196, 0),
          ),
          padding: const EdgeInsets.all(100),
          margin: const EdgeInsets.all(20),
          child: Image(
            image: NetworkImage(
                'https://fastly.picsum.photos/id/37/250/250.jpg?hmac=ZMIo0U9qQ6H3-jXK1khrSHzz-JeUuFQw5Hu0VO8Sdjg'),
          ),
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: "Exemplo de botão",
        child: Icon(Icons.add),
      ),
    );
  }
}
