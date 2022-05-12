import 'package:flutter/material.dart';
import 'package:museum_arts/models/art.dart';
import 'package:museum_arts/models/museum.dart';
import 'package:museum_arts/pages/artist_detalhes_page.dart';
import 'package:museum_arts/repositories/arts_repository.dart';

class ArtsDetalhesPage extends StatefulWidget {

  Art art;

  ArtsDetalhesPage({ Key? key, required this.art }) : super(key: key);
  
  @override
  State<ArtsDetalhesPage> createState() => _ArtsDetalhesPage();
}

class _ArtsDetalhesPage extends State<ArtsDetalhesPage> {

  telaArtista(String nomeArtista){
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (_) => ArtistDetalhesPage(nomeArtista: nomeArtista)
      )
    );
  }

  @override
  Widget build(BuildContext context) {

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
                child: Text(widget.art.title, style: TextStyle(color: Colors.white,fontSize: 20,),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: SizedBox(
                  height: 250,
                  child: Image.asset(widget.art.imagem),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.only(left: 16,bottom: 4.0),
                child: Row(
                  children: [
                    SizedBox(width: 5),
                    SizedBox(
                      child: Icon(Icons.favorite_outline,color: Colors.white,size: 30)),
                    SizedBox(width: 223),
                    Icon(Icons.bookmark_border_outlined, color: Colors.white,size: 32),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(children: [
                  SizedBox(
                    width: 80,
                    child: Text("Artista     ", 
                      style: TextStyle(color: Colors.brown[200],fontSize: 18,),)),
                  Text(widget.art.nomeArtista, style: TextStyle(color: Colors.white,fontSize: 18,),),
                  IconButton(
                        icon: const Icon(Icons.navigate_next_rounded,color: Colors.white,),
                        onPressed: () => telaArtista(widget.art.nomeArtista), 
                  ),
                ],),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(children: [
                  SizedBox(
                    width: 80,
                    child: Text("Museu     ", 
                      style: TextStyle(color: Colors.brown[200],fontSize: 18,),)),
                  Text(widget.art.nomeMuseu, style: TextStyle(color: Colors.white,fontSize: 18,),),
                ],),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(children: [
                  SizedBox(
                    width: 80,
                    child: Text("Coleção     ", 
                      style: TextStyle(color: Colors.brown[200],fontSize: 18,),)),
                  Text(widget.art.colecao, style: TextStyle(color: Colors.white,fontSize: 18,),),
                ],),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(children: [
                  SizedBox(
                    width: 80,
                    child: Text("Periodo     ", 
                      style: TextStyle(color: Colors.brown[200],fontSize: 18,),)),
                  Text(widget.art.periodo, style: TextStyle(color: Colors.white,fontSize: 18,),),
                ],),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(children: [
                  SizedBox(
                    width: 80,
                    child: Text("Cultura     ", 
                      style: TextStyle(color: Colors.brown[200],fontSize: 18,),)),
                  Text(widget.art.cultura, style: TextStyle(color: Colors.white,fontSize: 18,),),
                ],),
              ),
            ]),
          ),
          
        ),
      ));
  }
}