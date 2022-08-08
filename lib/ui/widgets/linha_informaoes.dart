import 'package:flutter/material.dart';

class LinhaInformacoes extends StatelessWidget {
  const LinhaInformacoes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.tertiary,
      height: 3.8,
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
    );
  }
}
