import 'package:flutter/material.dart';
import 'package:museum_arts/models/museum.dart';
import 'package:museum_arts/pages/arts_page.dart';
import 'package:museum_arts/repositories/museum_repository.dart';

class MuseumsPage extends StatefulWidget {
  const MuseumsPage({ Key? key }) : super(key: key);

  @override
  State<MuseumsPage> createState() => _MuseumsPageState();
}

class _MuseumsPageState extends State<MuseumsPage> {
  
  telaArts(Museu museu){
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (_) => ArtsPage(museu: museu)
      )
    );
  }

  @override
  Widget build(BuildContext context) {

  final tabela = MuseuRepository.tabela;

    Widget buildList() => ListView.separated(
        padding: EdgeInsets.all(16),
        separatorBuilder: (__,___) => Divider(), 
        itemCount: tabela.length,   
        itemBuilder: (BuildContext context, int museu){
          return ListTile(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
            tileColor: Colors.brown[700],
            leading: const Icon(Icons.account_balance_rounded, color: Colors.white,),
            title: Text(tabela[museu].nome, style: TextStyle(color: Colors.white,fontSize: 16,)),
            subtitle: Text(tabela[museu].localizacao, style: TextStyle(color: Colors.brown[300],)),
            trailing: IconButton(
                        icon: const Icon(Icons.navigate_next_rounded,color: Colors.white,),
                        onPressed: () => telaArts(tabela[museu]), 
                      ),
            
          );
        }, 
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Museus e Departamentos", style: TextStyle(color: Colors.white,),),
      ),
      body: buildList(),
    );
  }
}