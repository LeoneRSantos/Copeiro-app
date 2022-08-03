import 'package:flutter/material.dart';

class TextPais extends StatelessWidget{
 const TextPais({ Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    ColorScheme esquemaDeCores = Theme.of(context).colorScheme;
    return Text(name, 
        style: TextStyle(
        fontFamily: 'TekoRegular',
        fontSize: 30,
        color: esquemaDeCores.primary,
        ),);
  }
}
