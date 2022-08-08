import 'package:copeiro_app/controllers/tema_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchTelas extends StatelessWidget {
  const SwitchTelas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorScheme esquemaDeCores = Theme.of(context).colorScheme;
    return Switch(
      activeColor: esquemaDeCores.surface,
      activeTrackColor: esquemaDeCores.surface,
      inactiveThumbColor: esquemaDeCores.primary,
      inactiveTrackColor: esquemaDeCores.primary.withAlpha(100),
      value: context.read<TemaCubit>().state.brightness == Brightness.light
          ? false
          : true,
      onChanged: (_) {
        context.read<TemaCubit>().alteraTema();
      },
    );
  }
}
