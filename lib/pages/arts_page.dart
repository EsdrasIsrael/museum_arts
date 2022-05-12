import 'package:flutter/material.dart';
import 'package:museum_arts/models/art.dart';
import 'package:museum_arts/models/museum.dart';
import 'package:museum_arts/pages/art_detalhes_page.dart';
import 'package:museum_arts/repositories/artists_repository.dart';
import 'package:museum_arts/repositories/arts_repository.dart';

class ArtsPage extends StatefulWidget {

  Museu museu;

  ArtsPage({ Key? key, required this.museu }) : super(key: key);
  
  @override
  State<ArtsPage> createState() => _ArtsPageState();
}

class _ArtsPageState extends State<ArtsPage> {

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

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.museu.nome),
      ),
      body: ListView.separated(   
        itemBuilder: (BuildContext context, int art){
          return Container(
            padding: EdgeInsets.fromLTRB(10,10,10,0),
            height: 150,
            width: double.maxFinite,
            child: InkWell(
              onTap: () => telaArtDetalhes(tabelaArts[art]),
              child: Card(
                elevation: 5,
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(tabelaArts[art].imagem),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(tabelaArts[art].title,style: TextStyle(fontSize: 16),),
                            Text(tabelaArts[art].nomeArtista,style: TextStyle(fontSize: 12),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }, 
        padding: EdgeInsets.all(16),
        separatorBuilder: (__,___) => Divider(), 
        itemCount: tabelaArts.length,),
    );
  }
}
//Image.asset("images/Wheat-Field-with-Cypresses.jpg")Text(tabelaArts[0].nomeMuseu),