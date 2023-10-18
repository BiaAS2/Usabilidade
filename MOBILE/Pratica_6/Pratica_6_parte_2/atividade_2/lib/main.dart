import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (_) => PrimeiraRota(),
          '/segunda': (_) => SegundaRota(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );

class Preco {
  double etanol;
  double gasolina;
  Preco(this.etanol, this.gasolina);

  double razao() => etanol / gasolina;
}

class PrimeiraRota extends StatefulWidget {
  @override
  PrimeiraRotaState createState() {
    return PrimeiraRotaState();
  }
}

class PrimeiraRotaState extends State<PrimeiraRota> {
  TextEditingController etanolController = TextEditingController();
  TextEditingController gasolinaController = TextEditingController();
  String resultado = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Primeira Rota"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: TextField(
                controller: etanolController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => etanolController.clear(),
                    icon: const Icon(Icons.clear),
                  ),
                  border: const OutlineInputBorder(),
                  labelText: 'Informe o preço do etanol',
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.all(10),
              child: TextField(
                controller: gasolinaController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => gasolinaController.clear(),
                    icon: const Icon(Icons.clear),
                  ),
                  border: const OutlineInputBorder(),
                  labelText: 'Informe o preço da gasolina',
                ),
              ),
            ),

            Container(
              height: 35,
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  double etanol = double.parse(etanolController.text);
                  double gasolina = double.parse(gasolinaController.text);
                  Preco dados = Preco(etanol, gasolina);
                  Navigator.pushNamed(context, '/segunda', arguments: dados).then((value) {
                    setState(() {
                      resultado = value.toString();
                    });
                  });
                },
                child: const Text('Ir para a Segunda Rota'),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                resultado,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Preco dados = ModalRoute.of(context)!.settings.arguments as Preco;
    double relacao = dados.razao();
    String resultado =
        relacao < 0.7 ? 'Abasteça com etanol' : 'Abasteça com gasolina';

    return Scaffold(
      appBar: AppBar(
        title: const Text("Segunda Rota"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Text(
                '${dados.etanol.toStringAsFixed(2)} / ${dados.gasolina.toStringAsFixed(2)} = ${relacao.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(5),
              child: Text(
                '$resultado',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            
            Container(
              height: 35,
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, resultado);
                },
                child: const Text('Voltar para a Primeira Rota'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}