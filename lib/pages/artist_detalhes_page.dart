import 'package:flutter/material.dart';
import 'package:museum_arts/models/artist.dart';
import 'package:museum_arts/repositories/artists_repository.dart';

class ArtistDetalhesPage extends StatefulWidget {

  String nomeArtista;

  ArtistDetalhesPage({ Key? key, required this.nomeArtista }) : super(key: key);
  
  @override
  State<ArtistDetalhesPage> createState() => _ArtistDetalhesPage();
}

class _ArtistDetalhesPage extends State<ArtistDetalhesPage> {

  @override
  Widget build(BuildContext context) {

    
    final tabela = ArtistsRepository.tabelaArtists;
    List<Artist> artista = tabela.where((x) => x.nome.toLowerCase().contains(widget.nomeArtista.toLowerCase())).toList();
    print(artista[0].nome);
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.brown,
          ),
          child: Center(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(artista[0].nome, style: TextStyle(color: Colors.white,fontSize: 30,),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(artista[0].displayBio, style: TextStyle(color: Colors.brown[200],fontSize: 18,),
                )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 85.0),
                child: Row(
                  children: [
                    Text("Gênero    ",style: TextStyle(color: Colors.brown[200],fontSize: 18,)),
                    Text(artista[0].genero, style: TextStyle(color: Colors.white,fontSize: 18,),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          
        ),
      ));
  }
}