import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Conversor de Moeda',
    initialRoute: '/',
    routes: {
      '/': (context) => TelaReal(),
      '/valor-dolar': (context) => TelaDollar(),
      '/conversor': (context) => TelaConversao(),
    },
    debugShowCheckedModeBanner: false,
  ));
}

class TelaReal extends StatelessWidget {
  final realController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Valor em Real'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: TextField(
                controller: realController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => realController.clear(),
                    icon: const Icon(Icons.clear),
                  ),
                  border: const OutlineInputBorder(),
                  labelText: 'Informe o valor em Real',
                ),
              ),
            ),
            Container(
              height: 36,
              margin: const EdgeInsets.all(10),
              child: ElevatedButton.icon(
                label: const Text('Próximo'),
                icon: const Icon(Icons.navigate_next),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/valor-dolar',
                    arguments: (realController.text),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TelaDollar extends StatelessWidget {
  final dollarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final realValue = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Cotação'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: TextField(
                controller: dollarController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => dollarController.clear(),
                    icon: const Icon(Icons.clear),
                  ),
                  border: const OutlineInputBorder(),
                  labelText: 'Informe o valor do Dólar',
                ),
              ),
            ),
            Container(
              height: 36,
              margin: const EdgeInsets.all(10),
              child: ElevatedButton.icon(
                label: const Text('Próximo'),
                icon: const Icon(Icons.navigate_next),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/conversor',
                    arguments: {
                      'realValue': realValue,
                      'dollarValue': dollarController.text,
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TelaConversao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as Map;
    final realValue = double.parse(data['realValue']);
    final dollarValue = double.parse(data['dollarValue']);
    final convertedValue = realValue / dollarValue;
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultado'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('R\$ ${realValue.toStringAsFixed(2)} = US\$ ${convertedValue.toStringAsFixed(2)}',
            style: TextStyle(
              color: Colors.amber,
              fontSize: 35,
              fontWeight: FontWeight.bold
            ),
            ),
          ],
        ),
      ),
    );
  }
}
