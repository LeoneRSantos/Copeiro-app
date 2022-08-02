// ignore: import_of_legacy_library_into_null_safe
import 'dart:math';
import 'package:copeiro_app/controllers/tema_cubit.dart';
import 'package:copeiro_app/models/text/text_padrao.dart';
import 'package:copeiro_app/ui/pages/brasil.dart';
import 'package:copeiro_app/ui/pages/espanha.dart';
import 'package:copeiro_app/ui/pages/informacoes.dart';
import 'package:copeiro_app/ui/widgets/switch_telas.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<TemaCubit>(create: (_) => TemaCubit(),
    child: BlocBuilder<TemaCubit, ThemeData>(builder: (context, state) {

    return MaterialApp(
      title: 'Copeiro',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      theme: state,
    );
    },), );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    ColorScheme esquemaDeCores = Theme.of(context).colorScheme;
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: esquemaDeCores.background,
        elevation: 0,
        actions: const [
         SwitchTelas(),
        ],),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 110.0),
            child: Center(child: Image.asset('assets/images/logoCopeiro.png', width: 400, height: 400,)
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(top: 90.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            GestureDetector(
              onTap:() {
                // TODO: Aqui, será colocada a navegação para a página de informações, quando ela estiver pronta.
                debugPrint('Info');
              },
                child: Column(
                  children: [
                    Image.asset('assets/images/info.png', height: 50, width: 50,),
                    const TextPadrao(name: 'Informações'),
                    
                  ],
                ),
            ),
            GestureDetector(
              onTap:() {
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyBrasilPage()),);
                debugPrint('Brasileirão');
              },
                child: Column(
                  children: [
                    Image.asset('assets/images/logo-brasileirao.png', height: 50, width: 50,),
                    const TextPadrao(name: 'Brasileirão'),
                    
                  ],
                ),
            ),
            GestureDetector(
              onTap:() {
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyEspanhalPage()),);
                debugPrint('La Liga');
              },
                child: Column(
                  children: [
                    Image.asset('assets/images/laliga.png', height: 50, width: 50,),
                    const TextPadrao(name: 'La Liga'),  
                  ],
                ),
            ),
            ],
          ),
        ),
    ]));
  }
}