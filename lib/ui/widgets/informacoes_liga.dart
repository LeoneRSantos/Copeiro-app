import 'package:flutter/material.dart';

class InformacoesLiga extends StatelessWidget {
  InformacoesLiga(
      {Key? key,
      required this.titulo,
      required this.organizacao,
      required this.edicoes,
      required this.numeroDeEquipes,
      required this.sistema,
      required this.divisoes,
      required this.primeiroCampeao,
      required this.ultimoCampeao,
      required this.maiorCampeao})
      : super(key: key);

  final String titulo;
  final String organizacao;
  final String edicoes;
  final String numeroDeEquipes;
  final String sistema;
  final String divisoes;
  final String primeiroCampeao;
  final String ultimoCampeao;
  final String maiorCampeao;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(titulo),
        Text(organizacao),
        Text(edicoes),
        Text(numeroDeEquipes),
        Text(sistema),
        Text(divisoes),
        Text(primeiroCampeao),
        Text(ultimoCampeao),
        Text(maiorCampeao),
      ],
    );
  }
}