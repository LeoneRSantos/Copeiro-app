import 'package:flutter/material.dart';

class TodosTime extends StatelessWidget{
  const TodosTime({Key? key}) : super(key: key);

  Widget build(BuildContext context){
    ColorScheme esquemaDeCores = Theme.of(context).colorScheme;
    return Container(
      color: esquemaDeCores.background,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 26),
      margin: const EdgeInsets.symmetric(vertical: 2,),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Todos os Times', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: esquemaDeCores.primary),),
        ],
      ),
    );
  }
}