import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.green,
  Colors.red,
  Colors.yellow,
  Colors.purple,
  Colors.orange,
  Colors.teal,
  Colors.pink,
  Colors.cyan,
  Colors.lime,
  Colors.indigo,
  Colors.amber,
  Colors.brown,
  Colors.grey,
  Colors.blueGrey,

];


class AppTheme {

  final int selectedColor;

  AppTheme({
      this.selectedColor = 0
    }): assert(selectedColor >= 0, 'selectedColor must be greater than 0'),
    assert(selectedColor < colorList.length, 'selectedColor must be less than ${colorList.length}');

  ThemeData getTheme() => ThemeData(
    colorSchemeSeed: colorList[selectedColor],
  );


}