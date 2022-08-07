import 'package:copeiro_app/ui/widgets/help_informacoes.dart';
import 'package:flutter/material.dart';

class Conquistas extends StatelessWidget {
  Conquistas(
      {Key? key,
      required this.pais,
      required this.copa,
      required this.copaContinental,
      required this.copaDasConfederacoes,
      required this.olimpiadas,
      required this.copaDoMundoFeminina,
      required this.imagem})
      : super(key: key);

  final String pais;
  final String copa;
  final String copaContinental;
  final String copaDasConfederacoes;
  final String olimpiadas;
  final String copaDoMundoFeminina;
  final String imagem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                imagem,
                width: 70.0,
                height: 70.0,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                pais,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "TekoRegular"),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${copa} Títulos da Copa do Mundo de Futebol",
                style: TextInformacoes,
              ),
              Text(
                "${copaContinental} Títulos de Copa América",
                style: TextInformacoes,
              ),
              Text(
                "${copaDasConfederacoes} Títulos de Copa das Confederações",
                style: TextInformacoes,
              ),
              Text(
                "${olimpiadas} Medalhas de Ouro Olímpicas",
                style: TextInformacoes,
              ),
              Text(
                "${copaDoMundoFeminina} Copa do Mundo Feminina",
                style: TextInformacoes,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
