import 'package:copeiro_app/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TemaCubit extends Cubit<ThemeData> {
  static final _temaClaro = DesafioTheme.lightTheme;
  static final _temaEscuro = DesafioTheme.darkTheme;

  TemaCubit() : super(_temaClaro);

  void alteraTema() => state.brightness == Brightness.light
      ? emit(_temaEscuro)
      : emit(_temaClaro);
}