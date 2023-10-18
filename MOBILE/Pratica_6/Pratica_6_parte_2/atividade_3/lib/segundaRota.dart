import 'package:flutter/material.dart';
import 'descricao.dart';

class SegundaRota extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;

  SegundaRota({required this.title, required this.subtitle, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false, // Oculta a seta de retorno
      ),
      
      body: Descricao(
        title: title,
        subtitle: subtitle,
        description: description,
      ),
    );
  }
}