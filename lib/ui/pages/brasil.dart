import 'package:copeiro_app/controllers/tema_cubit.dart';
import 'package:copeiro_app/modelos/modelo_lista_de_partidas.dart';
import 'package:copeiro_app/modelos/modelo_times.dart';
import 'package:copeiro_app/repositorio/repositorio_de_lista_de_partida.dart';
import 'package:copeiro_app/repositorio/repositorio_times.dart';
import 'package:copeiro_app/ui/widgets/card_resultados.dart';
import 'package:copeiro_app/ui/widgets/card_time.dart';
import 'package:copeiro_app/ui/widgets/switch_telas.dart';
import 'package:copeiro_app/ui/widgets/text_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Brasil extends StatelessWidget {
  const Brasil({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider<TemaCubit>(create: (_) => TemaCubit(),
    child: BlocBuilder<TemaCubit, ThemeData>(builder: (context, state) {

    return MaterialApp(
      home:  MyBrasilPage(),
      theme: state,
    );
    },), );
  }
}

class MyBrasilPage extends StatefulWidget {
  const MyBrasilPage({Key? key}) : super(key: key);

  @override
  State<MyBrasilPage> createState() => _MyBrasilPageState ();
}

class _MyBrasilPageState extends State<MyBrasilPage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme esquemaDeCores = Theme.of(context).colorScheme;
    RepositorioTimesBrasileiro r = RepositorioTimesBrasileiro();
    RepositorioListaDePartida d = RepositorioListaDePartida();
    return Scaffold(
      backgroundColor: esquemaDeCores.background,
      appBar:  AppBar(
        title: 
          TextTile(liga: 'Brasil'),
          bottom: TabBar(
          controller: _tabController,
          indicatorColor: esquemaDeCores.onSurface,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.shield),
              text: 'Times',
            ),
            Tab(
              icon: Icon(Icons.data_thresholding_outlined),
              text: 'Resultados',
            ),],),
        actions: const [
         SwitchTelas(),
        ],),
      body: SafeArea(
        child: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Center(
          child:  FutureBuilder(
          future: r.getAllTImes(25),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var users = snapshot.data as List<Data>;

              return ListView.builder(
                itemCount: users.length,
                itemBuilder: (_, index) {
                  Data fato = users[index];
                  return ListTile(
                    // leading: const Icon(Icons.adb),
                    title: CardTime( escudo: '${fato.logo}', time: '${fato.name}',),);
                },);}
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.red,),
            );},),),
          Center(
            child:  FutureBuilder(
          future: d.getAll(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var users = snapshot.data as List<PartidaUnica>;

              return ListView.builder(
                itemCount: users.length,
                itemBuilder: (_, index) {
                  PartidaUnica fato = users[index];
                  return ListTile(
                    title: CardUmResultado( escudoMandante: fato.homeTeam?.logo,
                          nomeMandante: fato.homeTeam?.name, golsMandante: fato.stats?.homeScore, 
                          escudoVisitante: fato.awayTeam?.logo, nomeVisitante: 
                          fato.awayTeam?.name, golsVisitante: fato.stats?.awayScore),
                  );},);
            }
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),);},),),],),),
    );
  }
}