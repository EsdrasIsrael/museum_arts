import 'package:museum_arts/models/museum.dart';

class MuseuRepository {
  static List<Museu> tabela = [
    Museu(
      nome: "American Decorative Arts", 
      id: 1, 
      arts: [], 
      localizacao: "Nova York, Estados Unidos"),
    Museu(
      nome: "Asian Art", 
      id: 6, 
      arts: [], 
      localizacao: "São Francisco, Estados Unidos"),
    Museu(
      nome: "Egyptian Art", 
      id: 10, 
      arts: [], 
      localizacao: "Cairo, Egito"),
    Museu(
      nome: "European Sculpture and Decorative Arts", 
      id: 12, 
      arts: [], 
      localizacao: "Nova York, Estados Unidos"),
    Museu(
      nome: "Drawings and Prints", 
      id: 9, 
      arts: [], 
      localizacao: "Nova York, Estados Unidos"),
  ];
}