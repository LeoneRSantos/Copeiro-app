import 'package:copeiro_app/ui/widgets/help_informacoes.dart';
import 'package:flutter/material.dart';

class InformacoesLiga extends StatelessWidget {
  const InformacoesLiga(
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              "Informações ${titulo}",
              style: const TextStyle(
                height: 1.15,
                fontFamily: "TekoRegular",
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            HelpSpace,
            HelpSpace,
            Text(
              "Organização - ${organizacao}",
              style: TextInformacoes,
            ),
            HelpSpace,
            Text(
              "Número de Edições - ${edicoes}",
              style: TextInformacoes,
            ),
            HelpSpace,
            Text(
              "Número de equipes - ${numeroDeEquipes}",
              style: TextInformacoes,
            ),
            HelpSpace,
            Text(
              "Sistema - ${sistema}",
              style: TextInformacoes,
            ),
            HelpSpace,
            Text(
              "Divisões: ${divisoes}",
              style: TextInformacoes,
            ),
            HelpSpace,
            Text(
              "Primeiro Campeão - ${primeiroCampeao}",
              style: TextInformacoes,
            ),
            HelpSpace,
            Text(
              "Último Campeão - ${ultimoCampeao}",
              style: TextInformacoes,
            ),
            HelpSpace,
            Text(
              "Maior Campeão - ${maiorCampeao}",
              style: TextInformacoes,
            ),
          ],
        ),
      ),
    );
  }
}
