import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (_) => PrimeiraTela(), // _ = context.
          '/segunda': (_) => SegundaTela(), // _ = context.

          '/terceira': (_) => TerceiraTela(), // _ = context.
          '/quarta': (_) => QuartaTela(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );

class PrimeiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Corpo corpo = const Corpo('1');
    Botao botao = const Botao('segunda');
    return Tela('Primeira Tela', corpo, botao);
  }
}

class SegundaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Corpo corpo = const Corpo('2');
    Botoes botoes = const Botoes('terceira');
    return Tela('Segunda Tela', corpo, botoes);
  }
}

class TerceiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Corpo corpo = const Corpo('3');
    Botoes botoes = const Botoes('quarta');
    return Tela('Terceira Tela', corpo, botoes);
  }
}

class QuartaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Corpo corpo = const Corpo('4');
    Botoes botoes = const Botoes('');
    return Tela('Quarta Tela', corpo, botoes);
  }
}

class Corpo extends StatelessWidget {
  final String texto;
  const Corpo(this.texto);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      margin: const EdgeInsets.all(25),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.green,
      ),
      child: Text(
        texto,
        style: const TextStyle(
          fontSize: 45,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}

class Botao extends StatelessWidget {
  final String proxima;
  const Botao(this.proxima);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Icon(Icons.navigate_next),
      onPressed: () {
        Navigator.pushNamed(context, '/$proxima');
      },
    );
  }
}

class Botoes extends StatelessWidget {
  final String proxima;
  const Botoes(this.proxima);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          child: const Icon(Icons.navigate_before),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        ElevatedButton(
          child: const Icon(Icons.navigate_next),
          onPressed: () {
            Navigator.pushNamed(context, '/$proxima');
          },
        ),
      ],
    );
  }
}

class Tela extends StatelessWidget {
  final String titulo;
  final Widget corpo, navegacao;
  const Tela(this.titulo, this.corpo, this.navegacao);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
      ),
      body: Center(
        child: Column(
          children: [
            corpo,
            navegacao,
          ],
        ),
      ),
    );
  }
}
