import 'package:flutter/material.dart';
class CardUmResultado extends StatelessWidget {
  CardUmResultado(
      {Key? key,
      required this.escudoMandante,
      required this.nomeMandante,
      required this.golsMandante,
      required this.escudoVisitante,
      required this.nomeVisitante,
      required this.golsVisitante})
      : super(key: key);

  final String? escudoMandante;
  final String? nomeMandante;
  final int? golsMandante;

  final String? escudoVisitante;
  final String? nomeVisitante;
  final int? golsVisitante;

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
              SizedBox(
                child: Image.network(
                  '${escudoMandante!}',
                  errorBuilder: (context, exception, stackTrack) => Icon(
                    Icons.shield,
                    size: 35.0,
                  ),
                ),
                width: 40.0,
                height: 40.0,
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                nomeMandante!,
                style: TextStyle(fontSize: 18.0, color: cores.primary),
              ),
              Spacer(),
              Text(
                '${golsMandante!}',
                style: TextStyle(fontSize: 18.0, color: cores.primary),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          // Time 2
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                child: Image.network(
                  '${escudoVisitante!}',
                  errorBuilder: (context, exception, stackTrack) => Icon(
                    Icons.shield,
                    size: 35.0,
                  ),
                ),
                width: 40.0,
                height: 40.0,
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                nomeVisitante!,
                style: TextStyle(fontSize: 18.0, color: cores.primary),
              ),
              Spacer(),
              Text(
                '${golsVisitante!}',
                style: TextStyle(fontSize: 18.0, color: cores.primary),
              ),
            ],
          ),
          Container(
            color: cores.tertiary,
            height: 4,
            padding: const EdgeInsets.symmetric(horizontal: 100),
            margin: const EdgeInsets.only(top: 10),
          ),
        ],
      ),
    );
  }
}
