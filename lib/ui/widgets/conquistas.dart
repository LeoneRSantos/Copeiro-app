import 'package:flutter/material.dart';

class Conquistas extends StatelessWidget {
  Conquistas({Key? key, 
  required this.pais, 
  required this.copa, 
  required this.copaContinental, 
  required this.copaDasConfederacoes, 
  required this.olimpiadas, 
  required this.copaDoMundoFeminina, 
  required this.imagem}) : super(key: key);

  final String pais;
  final String copa;
  final String copaContinental;
  final String copaDasConfederacoes;
  final String olimpiadas;
  final String copaDoMundoFeminina;
  final String imagem;

  @override
  Widget build(BuildContext context) {
    return Column( 
      children: [ 
        Row( 
          children: [ 
            Image.asset(imagem, width: 40.0, height: 40.0,), 
            Text(pais), 
          ],
        ), 
        Column( 
          children: [ 
            Text(copa),
            Text(copaContinental),
            Text(copaDasConfederacoes),
            Text(olimpiadas),
            Text(copaDoMundoFeminina),
          ],
        ),
      ],
    );
  }
}