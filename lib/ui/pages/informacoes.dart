import 'package:copeiro_app/ui/widgets/conquistas.dart';
import 'package:copeiro_app/ui/widgets/informacoes_liga.dart';
import 'package:copeiro_app/ui/widgets/switch_telas.dart';
import 'package:flutter/material.dart';
import 'package:copeiro_app/models/text/text_infos.dart';
import 'package:copeiro_app/models/text/text_title_infos.dart';
import '../widgets/text_tile.dart';

class Informacoes extends StatefulWidget {
  Informacoes({Key? key}) : super(key: key);

  @override
  State<Informacoes> createState() => _InformacoesState();
}

class _InformacoesState extends State<Informacoes>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          SwitchTelas(),
        ],
        title: TextTile(
          liga: 'Informações',
        ),
        bottom: TabBar(
            controller: _tabController,
            indicatorColor: Theme.of(context).colorScheme.onSurface,
            tabs: [
              Tab(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/logo-brasileirao.png',
                      width: 20.0,
                      height: 20.0,
                    ),
                    TextTitleInfos(name:'Brasileirão'),
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/laliga.png',
                      width: 20.0,
                      height: 20.0,
                    ),
                    TextTitleInfos(name: 'La Liga'),
                  ],
                ),
              )
            ]),
      ),
      body: SafeArea(
          child: TabBarView(
        controller: _tabController,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            // TODO O que temos que fazer pro texto ficar no começo?

            children: [
              Conquistas(
                  pais: '   Brasil',
                  copa: '5 Títulos da Copa do Mundo de Futebol',
                  copaContinental: '9 Títulos de Copa América',
                  copaDasConfederacoes: '4 Títulos de Copa das Confederações',
                  olimpiadas: '2 Medalhas de Ouro Olímpicas',
                  copaDoMundoFeminina: 'Nenhuma Copa do Mundo Feminina',
                  imagem: 'assets/images/info.png'),
              Container(
                color: Theme.of(context).colorScheme.tertiary,
                height: 4,
                padding: const EdgeInsets.symmetric(horizontal: 100),
                margin: const EdgeInsets.only(top: 10, bottom: 10.0),
              ),
              InformacoesLiga(
                  titulo: 'Informações do Brasileirão',
                  organizacao: 'Organização - CBF',
                  edicoes:
                      'Número de Edições - 63 Edições',
                  numeroDeEquipes: 'Número de equipes - 20 equipes',
                  sistema: 'Sistema - pontos corridos',
                  divisoes: 'Divisões: Série A - Série B - Série C - Série D',
                  primeiroCampeao: 'Primeiro Campeão - Bahia EC (1959)',
                  ultimoCampeao: 'Último Campeão - C Atlético Mineiro (2021)',
                  maiorCampeao: 'Maior Campeão - SE Palmeiras (10 TÍTULOS)')
            ],
          ),
          Column(
            children: [
              Conquistas(
                  pais: '   Espanha',
                  copa: '1 Título da Copa do Mundo de Futebol',
                  copaContinental: '3 Títulos de Eurocopa',
                  copaDasConfederacoes: 'Nenhum Título de Copa das Confederações',
                  olimpiadas: '1 Medalha de Ouro Olímpicas',
                  copaDoMundoFeminina: 'Nenhuma Copa do Mundo Feminina',
                  imagem: 'assets/images/espanha.png'),
              Container(
                color: Theme.of(context).colorScheme.tertiary,
                height: 4,
                padding: const EdgeInsets.symmetric(horizontal: 100),
                margin: const EdgeInsets.only(top: 10, bottom: 10.0),
              ),
              InformacoesLiga(
                  titulo: 'Informações da La Liga',
                  organizacao: 'Organização - LFP',
                  edicoes:
                      'Número de Edições - 90 Edições',
                  numeroDeEquipes: 'Número de equipes - 20 equipes',
                  sistema: 'Sistema - pontos corridos',
                  divisoes: 'Divisões: La Liga - II División - II División B - III División',
                  primeiroCampeao: 'Primeiro Campeão - FC Barcelona (1928/29)',
                  ultimoCampeao: 'Último Campeão - Real Madrid (2021/22)',
                  maiorCampeao: 'Maior Campeão - Real Madrid (35 TÍTULOS)'),
            ],
          ),
        ],
      )),
    );
  }
}
