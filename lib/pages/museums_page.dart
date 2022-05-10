import 'package:flutter/material.dart';

class MuseumsPage extends StatelessWidget {
  const MuseumsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Museus", style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Text("museus"),
      ),
    );
  }
}