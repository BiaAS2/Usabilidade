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
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20.0),
                      padding: const EdgeInsets.all(5.0),
                      height: 400,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/VR.jpg'),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 2,
                            blurRadius: 5,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //2ª imagem
            Expanded(
              child: FittedBox(
                fit: BoxFit.contain,
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20.0),
                      padding: const EdgeInsets.all(5.0),
                      height: 400,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/cachorro.jpg'),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 2,
                            blurRadius: 5,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'Exemplo de botão',
        child: Icon(Icons.add),
      ),
    );
  }
}
