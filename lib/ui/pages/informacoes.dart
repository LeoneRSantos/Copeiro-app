import 'package:copeiro_app/controllers/tema_cubit.dart';
import 'package:copeiro_app/ui/widgets/conquistas.dart';
import 'package:copeiro_app/ui/widgets/informacoes_liga.dart';
import 'package:copeiro_app/ui/widgets/linha_informaoes.dart';
import 'package:copeiro_app/ui/widgets/switch_telas.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/text_tile.dart';

class Informacoes extends StatelessWidget {
  const Informacoes({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<TemaCubit>(
      create: (_) => TemaCubit(),
      child: BlocBuilder<TemaCubit, ThemeData>(
        builder: (context, state) {
          return MaterialApp(
            home: TelaDeInformacoes(),
            theme: state,
          );
        },
      ),
    );
  }
}

class TelaDeInformacoes extends StatefulWidget {
  TelaDeInformacoes({Key? key}) : super(key: key);

  @override
  State<TelaDeInformacoes> createState() => _TelaDeInformacoesState();
}

class _TelaDeInformacoesState extends State<TelaDeInformacoes>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme esquemaDeCores = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: esquemaDeCores.background,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.0), // here the desired height
        child: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            SwitchTelas(),
          ],
          title: TextTile(
            liga: 'Informações',
          ),
          bottom: TabBar(
              controller: _tabController,
              indicatorColor: esquemaDeCores.onSurface,
              tabs: [
                Tab(
                  height: 75,
                  child: Column(
                    children: [
                      IconButton(
                          onPressed: (() => {}),
                          icon: Image.asset(
                            'assets/images/logo-brasileirao.png',
                          )),
                      const Text(
                        'Brasileirão',
                        style: TextStyle(
                          fontFamily: "TekoRegular",
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
                Tab(
                  height: 75,
                  child: Column(
                    children: [
                      IconButton(
                          onPressed: (() => {}),
                          icon: Image.asset(
                            'assets/images/laliga.png',
                          )),
                      const Text(
                        'La Liga',
                        style: TextStyle(
                          fontFamily: "TekoRegular",
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                )
              ]),
        ),
      ),
      body: SafeArea(
          child: TabBarView(
        controller: _tabController,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Conquistas(
                  pais: 'Brasil',
                  copa: '5',
                  copaContinental: '9',
                  copaDasConfederacoes: '4',
                  olimpiadas: '2',
                  copaDoMundoFeminina: '0',
                  imagem: 'assets/images/brasil.png'),
              const LinhaInformacoes(),
              InformacoesLiga(
                  titulo: 'do Brasileirão',
                  organizacao: 'CBF',
                  edicoes: '63 Edições',
                  numeroDeEquipes: '20 equipes',
                  sistema: 'pontos corridos',
                  divisoes: 'Série A - Série B - Série C - Série D',
                  primeiroCampeao: 'Bahia EC (1959)',
                  ultimoCampeao: 'C Atlético Mineiro (2021)',
                  maiorCampeao: 'SE Palmeiras (10 títulos)'),
              const LinhaInformacoes(),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Conquistas(
                  pais: 'Espanha',
                  copa: '1',
                  copaContinental: '3',
                  copaDasConfederacoes: '0',
                  olimpiadas: '1',
                  copaDoMundoFeminina: '0',
                  imagem: 'assets/images/espanha.png'),
              const LinhaInformacoes(),
              InformacoesLiga(
                  titulo: 'da La Liga',
                  organizacao: 'LFP',
                  edicoes: '90 Edições',
                  numeroDeEquipes: '20 equipes',
                  sistema: 'pontos corridos',
                  divisoes:
                      'La Liga - II División - II División B - III División',
                  primeiroCampeao: 'FC Barcelona (1928/29)',
                  ultimoCampeao: 'Real Madrid (2021/22)',
                  maiorCampeao: 'Real Madrid (35 títulos)'),
              const LinhaInformacoes()
            ],
          ),
        ],
      )),
    );
  }
}
