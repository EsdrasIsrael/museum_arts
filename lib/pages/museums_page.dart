import 'package:flutter/material.dart';
import 'package:museum_arts/repositories/museum_repository.dart';

class MuseumsPage extends StatelessWidget {
  const MuseumsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final tabela = MuseuRepository.tabela;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Museus e Departamentos", style: TextStyle(color: Colors.white),),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int museu){
          return ListTile(
            leading: const Icon(Icons.account_balance_rounded),
            title: Text(tabela[museu].nome),
            trailing: Text(""),
          );
        }, 
        padding: EdgeInsets.all(16),
        separatorBuilder: (__,___) => Divider(), 
        itemCount: tabela.length,),
    );
  }
}