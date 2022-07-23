
import 'package:copeiro_app/controllers/tema_cubit.dart';
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
    return Scaffold(
      appBar:  AppBar(
        // backgroundColor: esquemaDeCores.background,
        actions: const [
         SwitchTelas(),
        ],),
    );
  }
}
