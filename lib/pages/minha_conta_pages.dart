import 'package:flutter/material.dart';

class MinhaContaPage extends StatefulWidget {
  const MinhaContaPage({ Key? key }) : super(key: key);

  @override
  State<MinhaContaPage> createState() => _MinhaContaPageState();
}

class _MinhaContaPageState extends State<MinhaContaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Minha Conta"),
      ),
    );
  }
}