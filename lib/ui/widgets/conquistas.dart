import 'package:copeiro_app/models/text/text_infos.dart';
import 'package:copeiro_app/models/text/text_title_infos.dart';
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
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [ 
        Row( 
          children: [ 
            Image.asset(imagem, width: 70.0, height: 70.0,), 
            TextPais(name: pais), 
          ],
        ), 
        Center(
          child: Column( 
            children: [ 
              TextInfos(name: copa),
              TextInfos(name: copaContinental),
              TextInfos(name: copaDasConfederacoes),
              TextInfos(name: olimpiadas),
              TextInfos(name: copaDoMundoFeminina),
            ],
          ),
        ),
      ],
    );
  }
}