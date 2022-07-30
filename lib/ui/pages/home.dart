// ignore: import_of_legacy_library_into_null_safe
import 'dart:math';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:copeiro_app/controllers/tema_cubit.dart';
import 'package:copeiro_app/models/text/text_padrao.dart';
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

  Icon _IconVisibilidade = const Icon(Icons.visibility);
  bool botaoVizualizar = false;
  int _currentIndex = 0;
  Icon iconTema = const Icon(Icons.bedtime);

  @override
  Widget build(BuildContext context) {
    ColorScheme esquemaDeCores = Theme.of(context).colorScheme;
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: esquemaDeCores.background,
        actions: const [
         SwitchTelas(),
        ],),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Image.asset('assets/images/logoCopeiro.png', width: 400, height: 400,)
          ),
      
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          GestureDetector(
            onTap:() {
              // TODO: Aqui, será colocada a navegação para a página de informações, quando ela estiver pronta.
              debugPrint('Info');
            },
            child: Container(
              child: Column(
                children: [
                  Image.asset('assets/images/logo-brasileirao.png', height: 50, width: 50,),
                  TextPadrao(name: 'Brasileirão'),
                  
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap:() {
               Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyBrasilPage()),);
              debugPrint('Brasileirão');
            },
            child: Container(
              child: Column(
                children: [
                  Image.asset('assets/images/logo-brasileirao.png', height: 50, width: 50,),
                  TextPadrao(name: 'Brasileirão'),
                  
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap:() {
            },
            child: Container(
              child: Column(
                children: [
                  Image.asset('assets/images/logo-brasileirao.png', height: 50, width: 50,),
                  TextPadrao(name: 'Brasileirão'),
                  
                ],
              ),
            ),
          )
          ],
        ),
      
      /*bottomNavigationBar: BottomNavyBar(
        backgroundColor: esquemaDeCores.background,
        selectedIndex: _currentIndex,
        showElevation: false,
        itemCornerRadius: 20,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: [
          BottomNavyBarItem(
            icon: Container( 
              width: 30,
              height: 30, 
              child: const ImageIcon(
                  AssetImage('assets/images/info.png'),
                )), 
            title:  TextPadrao(name: 'Info',),
            activeColor: esquemaDeCores.primary,
            textAlign: TextAlign.center
          ),
          BottomNavyBarItem(
            icon: Container( 
              width: 30,
              height: 30, 
              child: const ImageIcon(
                  AssetImage('assets/images/logo-brasileirao.png'),
                )), 
            title:  TextPadrao(name: 'Brasileirão',), 
            activeColor: esquemaDeCores.primary,
            textAlign: TextAlign.center
          ),
          BottomNavyBarItem(
            icon: Container( 
              width: 30,
              height: 30, 
              child: const ImageIcon(
                  AssetImage('assets/images/laliga.png'),
                )), 
            title:  TextPadrao(name: 'La Liga',),
            activeColor: esquemaDeCores.primary,
            textAlign: TextAlign.center
          ),
        ],
      ),*/
    ]));
  }
}