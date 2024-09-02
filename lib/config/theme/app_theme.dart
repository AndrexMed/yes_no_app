import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(255, 226, 13, 13);
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.cyan,
  Colors.green,
  Colors.indigo,
  Colors.orange,
  Colors.pink,
  Colors.red,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'Colors must be beetween 0 and ${_colorThemes.length - 1}');

  //Funcion que retorna un objeto de tipo ThemData.
  ThemeData theme() {
    return ThemeData(
        // useMaterial3: false Ya viene activado por defecto.
        colorSchemeSeed: _colorThemes[selectedColor],
        // brightness: Brightness.dark Tema Oscuro
        );
  }
}
