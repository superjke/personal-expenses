import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
  primarySwatch: Colors.green,
  accentColor: Colors.black,
  textTheme: ThemeData.light().textTheme.copyWith(
        title: TextStyle(
          fontFamily: 'OpenSans',
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        button: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
  appBarTheme: AppBarTheme(
    color: Colors.indigo,
    textTheme: ThemeData.light().textTheme.copyWith(
          title: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
  ),
  fontFamily: 'Quicksand',
);
