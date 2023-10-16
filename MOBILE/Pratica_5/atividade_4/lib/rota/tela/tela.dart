import 'package:flutter/material.dart';

class Tela extends StatelessWidget {
  final String titulo;
  final Widget corpo, navegacao;
  const Tela(this.titulo, this.corpo, this.navegacao);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
        automaticallyImplyLeading: false,
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