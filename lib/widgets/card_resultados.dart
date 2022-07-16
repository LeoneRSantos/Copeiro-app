import 'package:flutter/material.dart';

class CardResultados extends StatelessWidget {
  CardResultados({Key? key}) : super(key: key); 

  // Escudos teste

  List<String> escudosMandantes = ["https://upload.wikimedia.org/wikipedia/pt/b/b4/Corinthians_simbolo.png", "https://upload.wikimedia.org/wikipedia/en/5/5f/Clube_Atl%C3%A9tico_Mineiro_crest.svg"];

  List<String> escudosVisitantes = ["https://static.wikia.nocookie.net/captaintsubasa/images/4/46/S%C3%A3o_Paulo_FC.png/revision/latest?cb=20180721104532", "https://upload.wikimedia.org/wikipedia/commons/6/60/CruzeiroECMG.png"];

  List<String> testeEscudo = ["https://upload.wikimedia.org/wikipedia/pt/b/b4/Corinthians_simbolo.png", "https://upload.wikimedia.org/wikipedia/pt/b/b4/Corinthians_simbolo.png", "https://upload.wikimedia.org/wikipedia/pt/b/b4/Corinthians_simbolo.png", "https://upload.wikimedia.org/wikipedia/pt/b/b4/Corinthians_simbolo.png",];

  // Nomes teste

  List<String> nomesDosMandantes = ["CORINTHIANS", "ATLÉTICO MINEIRO"]; 

  List<String> nomesDosVisitantes = [ "SÃO PAULO", "CRUZEIRO"];


  // Gols teste

  List<String> golsDosMandantes = ["2", "1",];

  List<String> golsDosVisitantes = ["1", "0"];

  @override
  Widget build(BuildContext context) {

    ColorScheme cores = Theme.of(context).colorScheme;
    
    return SafeArea( 
      child: Scaffold( 
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column( 
            children: [ 

              Expanded( 
                child: Container( 
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0), 
                  border: Border.all(color: cores.onPrimary, width: 5.0)),
                ),
              ),
            ],
          ),
        ),
      ));
  }
}