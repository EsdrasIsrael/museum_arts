
import 'package:flutter/material.dart';

class FavoritosPage extends StatefulWidget {
  const FavoritosPage({ Key? key }) : super(key: key);

  @override
  State<FavoritosPage> createState() => _FavoritosPageState();
}

class _FavoritosPageState extends State<FavoritosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favoritos"),
      ),
    );
  }
}