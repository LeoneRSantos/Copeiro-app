import 'package:flutter/material.dart';

class TextPadrao extends StatelessWidget{
 const TextPadrao({ Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    ColorScheme esquemaDeCores = Theme.of(context).colorScheme;
    return Text(name, 
        style: TextStyle(
        fontFamily: 'TekoRegular',
        fontSize: 20,
        color: esquemaDeCores.primary,
        fontWeight: FontWeight.w700),);
  }
}
