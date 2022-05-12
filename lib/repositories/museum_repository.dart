import 'package:museum_arts/models/art.dart';
import 'package:museum_arts/models/artist.dart';
import 'package:museum_arts/models/museum.dart';


class MuseuRepository {
  
  static List<Museu> tabela = [
    Museu(
      nome: "American Decorative Arts", 
      id: 1,  
      localizacao: "Nova York, Estados Unidos"),
    Museu(
      nome: "Asian Art", 
      id: 6,  
      localizacao: "São Francisco, Estados Unidos"),
    Museu(
      nome: "Egyptian Art", 
      id: 10, 
      localizacao: "Cairo, Egito"),
    Museu(
      nome: "Drawings and Prints", 
      id: 9, 
      localizacao: "Nova York, Estados Unidos"),
    Museu(
      nome: "European Paintings", 
      id: 11, 
      localizacao: "Nova York, Estados Unidos"),
  ];
}