
import 'package:copeiro_app/controllers/tema_cubit.dart';
import 'package:copeiro_app/widgets/card_time.dart';
import 'package:copeiro_app/widgets/switch_telas.dart';
import 'package:copeiro_app/widgets/text_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'modelos/modelo_lista_de_partidas.dart';
import 'modelos/modelo_times.dart';
import 'repositorio/repositorio_de_lista_de_partida.dart';
import 'repositorio/repositorio_times.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<TemaCubit>(create: (_) => TemaCubit(),
    child: BlocBuilder<TemaCubit, ThemeData>(builder: (context, state) {

    return MaterialApp(

      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      theme: state,
    );
    },), );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
     ColorScheme esquemaDeCores = Theme.of(context).colorScheme;
    RepositorioTimesBrasileiro r = RepositorioTimesBrasileiro();
    return Scaffold(
      appBar:  AppBar(
        toolbarHeight: 100, // Set this height
        flexibleSpace: Column(
          children: const [
          TextTile(liga: 'Brasil'),
          ],

        ),
        // backgroundColor: esquemaDeCores.background,
        actions: const [
         SwitchTelas(),
        ],),
      body: SafeArea(
        child: FutureBuilder(
          future: r.getAllTImes(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var users = snapshot.data as List<Data>;

              return ListView.builder(
                itemCount: users.length,
                itemBuilder: (_, index) {
                  Data fato = users[index];
                  return ListTile(
                    leading: const Icon(Icons.adb),
                    title:
                        CardTime(time: '${fato.name}', escudo: '${fato.shortCode}'),
                  );
                },
              );
            }
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            );
          },
        ),
      ),
    );
  }
}
