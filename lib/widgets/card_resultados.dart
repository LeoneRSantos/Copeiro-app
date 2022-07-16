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


class CardUmResultado extends StatelessWidget {
  
  CardUmResultado({Key? key, 
  required this.escudoMandante, 
  required this.nomeMandante, 
  required this.golsMandante, 
  required this.escudoVisitante, 
  required this.nomeVisitante, 
  required this.golsVisitante}) : super(key: key);

  final String escudoMandante;
  final String nomeMandante;
  final String golsMandante;

  final String escudoVisitante;
  final String nomeVisitante;
  final String golsVisitante;

  @override
  Widget build(BuildContext context) {

    ColorScheme cores = Theme.of(context).colorScheme; 

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [ 

          // Time 1
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [ 
              Image.network(escudoMandante, scale: 7.0,),
              Text(nomeMandante, style: TextStyle(fontSize: 20.0, color: cores.primary),), 
              Spacer(),
              Text(golsMandante, style: TextStyle(fontSize: 20.0, color: cores.primary),),
            ],
          ), 


          // Time 2
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [ 
              Image.network(escudoVisitante, scale: 7.0,),
              Text(nomeVisitante, style: TextStyle(fontSize: 20.0, color: cores.primary),), 
              Spacer(),
              Text(golsVisitante, style: TextStyle(fontSize: 20.0, color: cores.primary),),
            ],
          ), 

          // Divider(color: Theme.of(context).colorScheme.onBackground,),
        ],
      ),
    );
  }
}