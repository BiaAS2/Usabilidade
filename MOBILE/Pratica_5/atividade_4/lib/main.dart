import 'package:flutter/material.dart';
import './rota/rota.dart';

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
