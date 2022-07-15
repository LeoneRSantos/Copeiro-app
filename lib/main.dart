
import 'package:copeiro_app/widgets/card_time.dart';
import 'package:flutter/material.dart';

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
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
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
    RepositorioTimesBrasileiro r = RepositorioTimesBrasileiro();
    return Scaffold(
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
                        Text('${fato.name}X ${fato.shortCode}'),
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
