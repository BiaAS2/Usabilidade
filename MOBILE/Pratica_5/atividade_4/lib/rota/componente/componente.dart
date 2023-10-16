import 'package:flutter/material.dart';

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
  final String rotaAnterior;
  const Botoes(this.proxima, this.rotaAnterior);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          child: const Icon(Icons.navigate_before),
          onPressed: () {
            Navigator.pushReplacementNamed(context, rotaAnterior);
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
