// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:museum_arts/pages/favoritos_page.dart';
import 'package:museum_arts/pages/minha_conta_pages.dart';
import 'package:museum_arts/pages/museums_page.dart';

class MeuApp extends StatefulWidget {
  const MeuApp({Key? key}) : super(key: key);

  @override
  State<MeuApp> createState() => _MeuAppState();
}

class _MeuAppState extends State<MeuApp> {


  Widget bottoNavigator() => BottomNavigationBar(
				currentIndex: _indiceAtual,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Minha conta"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_rounded),
              label: "Museus"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favoritos"
          ),
        ],
  );

  int _indiceAtual = 1;
  final List<Widget> _telas = [
    MinhaContaPage(),
    MuseumsPage(),
    FavoritosPage()
  ];

  void onTabTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "myAppPage",
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        textTheme: const TextTheme(
          titleMedium: TextStyle(fontFamily: "PlayfairDisplay"),
          titleLarge: TextStyle(fontFamily: "PlayfairDisplay"),
          bodyMedium: TextStyle(fontFamily: "PlayfairDisplay"),
          ),
        colorScheme: ThemeData().colorScheme.copyWith(
          primary: Colors.brown,
          secondary: Colors.white,
        ),
      ),
      home: Scaffold(
        bottomNavigationBar: bottoNavigator(),
        body: _telas[_indiceAtual],
      ),
    );
  }
}