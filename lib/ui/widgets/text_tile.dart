import 'package:flutter/material.dart';

class TextTile extends StatelessWidget{
  const TextTile({Key? key, required this.liga}) : super(key: key);

  final String liga;

  Widget build(BuildContext context){
    ColorScheme esquemaDeCores = Theme.of(context).colorScheme;
    
    return Container(
      margin: const EdgeInsets.only(top: 20,),
      child: Row(
      children: [
        IconButton(
          icon: Icon(Icons.arrow_back_ios_new, size: 30, color: esquemaDeCores.primary,),
          onPressed: () => Navigator.of(context).pop(),
        ), 
        SizedBox(width: 10,),
        Text(liga, style: TextStyle(fontSize: 35, fontFamily: 'TekoRegular', color: esquemaDeCores.primary),),
      ],
    ),
    );
    
  }
}