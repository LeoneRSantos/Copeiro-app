import 'package:flutter/material.dart';

class CardTime extends StatelessWidget {
  const CardTime({Key? key, required this.time, required this.escudo})
      : super(key: key);
  final String? time;
  final String? escudo;

  Widget build(BuildContext context) {
    ColorScheme esquemaDeCores = Theme.of(context).colorScheme;
    return Column(
      children: [
        Container(
          color: esquemaDeCores.background,
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                time!,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                    color: esquemaDeCores.primary),
              ),
              Image.network(
                escudo!,
                width: 50,
                height: 50,
              ),
            ],
          ),
        ),
        Container(
          color: esquemaDeCores.tertiary,
          height: 4,
          padding: const EdgeInsets.symmetric(horizontal: 100),
        ),
      ],
    );
  }
}
