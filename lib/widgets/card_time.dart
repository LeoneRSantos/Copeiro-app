import 'package:flutter/material.dart';

class CardTime extends StatelessWidget{
  const CardTime({Key? key, required this.time, required this.escudo}) : super(key: key);
  final String? time;
  final String? escudo;

  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
      margin: const EdgeInsets.symmetric(vertical: 0.01),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(time!, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w900),),
          Image.network(escudo!, width: 48, height: 48,),
        ],
      ),
    );
  }
}