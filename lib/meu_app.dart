// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:museum_arts/pages/museums_page.dart';

class MeuApp extends StatelessWidget {
  const MeuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "museumspage",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
        fontFamily: "PlayfairDisplay"
      ),
      home: MuseumsPage(),
    );
  }
}