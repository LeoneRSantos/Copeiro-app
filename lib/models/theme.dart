import 'package:flutter/material.dart';

class DesafioTheme {
  static const _lightFillColor = Colors.black;
  static const _darkFillColor = Colors.white;

  static const ColorScheme _lightColorScheme = ColorScheme(
    // cor dos textos
    primary: Color.fromRGBO(250, 236, 236, 1),
    // borda
    surface:Color.fromRGBO(255, 255, 255, 1),

    background: Color.fromRGBO(3, 152, 158, 1),
    //appbar e separação
    tertiary: Color.fromRGBO(24, 114, 125, 1),
    // background  texto appbar telas 2 e 3
    secondary: Color.fromRGBO(3, 152, 158, 1),

    //não usadas
    brightness: Brightness.light,
    primaryVariant: Color.fromARGB(255, 33, 5, 96),
    error: Colors.red,
    onPrimary: Color(0xFF0A0E21),
    onSecondary: _lightFillColor,
    onSurface: _lightFillColor,
    onBackground: _lightFillColor,
    onError: _lightFillColor,
    
  );

  static const ColorScheme _darkColorScheme = ColorScheme(
    // cor dos textos
    primary: Color.fromRGBO(251, 255, 240, 1),
    // borda
    surface:Color.fromRGBO(255, 255, 255, 1),

    background: Color.fromRGBO(13, 13, 13, 1),
    //appbar e separação
    tertiary: Color.fromRGBO(56, 62, 72, 1),
    // background  texto appbar telas 2 e 3
    secondary: Color.fromRGBO(255, 212, 208, 210),

    // não usadas
    secondaryVariant: Color.fromARGB(255, 214, 210, 226),
    brightness: Brightness.dark,
    error: Colors.red,
    onPrimary: Color(0xFF8D8E98),
    onSecondary: _darkFillColor,
    onSurface: Color(0xFF8D8E98),
    onBackground: _darkFillColor,
    onError: _darkFillColor,
  );

  static ThemeData lightTheme =
      themeData(_lightColorScheme);
  static ThemeData darkTheme =
      themeData(_darkColorScheme);

  static themeData(
          ColorScheme colorScheme) =>
      ThemeData(
        primarySwatch: Colors.blueGrey,
        primaryColor: const Color(0xFF0A0E21),
        colorScheme: colorScheme,
        scaffoldBackgroundColor: colorScheme.tertiary,
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: colorScheme.tertiary,
          // iconTheme: IconThemeData(color: colorScheme.primary),
        ),
      );
}