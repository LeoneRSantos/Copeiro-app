import 'package:flutter/material.dart';

class TextTile extends StatelessWidget{
  const TextTile({Key? key, required this.liga}) : super(key: key);

  final String liga;

  Widget build(BuildContext context){
    ColorScheme esquemaDeCores = Theme.of(context).colorScheme;
    
    return Container(
      margin: const EdgeInsets.only(top: 35, left: 16),
      child: Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(liga, style: TextStyle(fontSize: 35, color: esquemaDeCores.primary),),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10, top: 10),
               padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
              decoration: BoxDecoration(
                color: esquemaDeCores.secondary,
                 border: Border.all(
                color: esquemaDeCores.primary,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(32),
              ),
                child: Text('Times', style: TextStyle(fontSize: 18, color: esquemaDeCores.primary, fontWeight: FontWeight.bold)),
            ),
           Container(
            margin: const EdgeInsets.only(right: 10, top: 10),
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
              decoration: BoxDecoration(
                color: esquemaDeCores.tertiary,
                 border: Border.all(
                color: esquemaDeCores.primary,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(32),
              ),
                child: Text('Resultados', style: TextStyle(fontSize: 18, color: esquemaDeCores.primary, fontWeight: FontWeight.bold)),
            ),
          ],
        )
      ],
    ),
    );
    
  }
}
