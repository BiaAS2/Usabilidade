import 'package:flutter/material.dart';
import './componente/componente.dart';
import './tela/tela.dart';

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
    Botoes botoes = const Botoes('terceira', '/');
    return Tela('Segunda Tela', corpo, botoes);
  }
}

class TerceiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Corpo corpo = const Corpo('3');
    Botoes botoes = const Botoes('quarta', '/segunda');
    return Tela('Terceira Tela', corpo, botoes);
  }
}

class QuartaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Corpo corpo = const Corpo('4');
    Botoes botoes = const Botoes('segunda', '/terceira');
    return Tela('Quarta Tela', corpo, botoes);
  }
}
