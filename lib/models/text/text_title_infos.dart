import 'package:flutter/material.dart';

class TextTitleInfos extends StatelessWidget{
 const TextTitleInfos({ Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    ColorScheme esquemaDeCores = Theme.of(context).colorScheme;
    return Text(name, 
        style: TextStyle(
        fontFamily: 'TekoRegular',
        fontSize: 18,
        color: esquemaDeCores.primary,
        ),);
  }
}
