import 'package:flutter/material.dart';

Widget textHeader(String myText, double fontSize, Color color) {
  return Text(
    myText,
    style: TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: FontWeight.bold, // You can adjust the font weight as needed
    ),
  );
}
