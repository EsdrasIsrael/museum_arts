import 'package:flutter/material.dart';
import 'package:museum_arts/models/art.dart';
import 'package:museum_arts/models/museum.dart';
import 'package:museum_arts/pages/art_detalhes_page.dart';
import 'package:museum_arts/repositories/arts_repository.dart';

class ArtsPage extends StatefulWidget {

  Museu museu;

  ArtsPage({ Key? key, required this.museu }) : super(key: key);
  
  @override
  State<ArtsPage> createState() => _ArtsPageState();
}

class _ArtsPageState extends State<ArtsPage> {

  bool isDescending = false;

  telaArtDetalhes(Art art){
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (_) => ArtsDetalhesPage(art: art)
      )
    );
  }

  @override
  Widget build(BuildContext context) {

  final tabela = ArtsRepository.tabelaArts;
  List<Art> tabelaArts = tabela.where((x) => x.nomeMuseu.toLowerCase().contains(widget.museu.nome.toLowerCase())).toList();

  Widget buildList() => ListView.separated( 
        separatorBuilder: (__,___) => Divider(), 
        itemCount: tabelaArts.length,  
        itemBuilder: (BuildContext context, int art){
          final sortedItems = tabelaArts
            ..sort((item1, item2) => isDescending ? 
              item2.title.compareTo(item1.title) : item1.title.compareTo(item2.title));
          final item = sortedItems[art];

          return Container(
            padding: EdgeInsets.fromLTRB(5,0,5,0),
            height: 150,
            width: double.maxFinite,
            child: InkWell(
              onTap: () => telaArtDetalhes(tabelaArts[art]),
              child: Card(
                color: Colors.brown,
                elevation: 2,
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        width: 130,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(tabelaArts[art].imagem),
                        ),
                      ),
                      Container(
                        width: 200,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(tabelaArts[art].title,
                                style: TextStyle(color: Colors.brown[50],fontSize: 18),),
                              Text(tabelaArts[art].nomeArtista,
                                style: TextStyle(color: Colors.brown[200],fontSize: 14),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }, 
      );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.museu.nome),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
            width: double.maxFinite,
            color: Colors.brown[800],
            child: TextButton.icon(
              icon: RotatedBox(
                quarterTurns: 1,
                child: Icon(Icons.compare_arrows, size: 16,color: Colors.brown[100]),), 
              onPressed: () => setState(() => isDescending = !isDescending), 
              label: Text(isDescending ? "Z-A": "A-Z", 
                style: TextStyle(color: Colors.brown[100],fontSize: 18),)
            ),
          ),
          Expanded(child: buildList()),
        ],
      ),
    );

    
  }
}
//Image.asset("images/Wheat-Field-with-Cypresses.jpg")Text(tabelaArts[0].nomeMuseu),

/*
TextButton.icon(
            icon: RotatedBox(
              quarterTurns: 1,
              child: Icon(Icons.compare_arrows, size: 24,),), 
            onPressed: (){}, 
            label: Text("Ascendente", style: TextStyle(fontSize: 16),)),
*/