import 'package:museum_arts/models/art.dart';

class ArtsRepository {

  static List<Art> tabelaArts = [
    Art(
      id: 1, 
      imagem: "images/img1.jpg", 
      title: "Nini in the Garden (Nini Lopez)",
      nomeArtista: "Auguste Renoir",
      periodo: "Dynasty",
      cultura: "",
      nomeMuseu: "European Paintings",
      colecao: "Pinturas",
    ),
    Art(
      id: 2, 
      imagem: "images/img2.jpg", 
      title: "Garden at Sainte-Adresse",
      nomeArtista: "Claude Monet",
      periodo: "Dynasty",
      cultura: "",
      nomeMuseu: "European Paintings",
      colecao: "Pinturas",
    ),
    Art(
      id: 3, 
      imagem: "images/img3.jpg", 
      title: "Castel Fusano—Near Rome",
      nomeArtista: "William Stanley",
      periodo: "Dynasty",
      cultura: "American",
      nomeMuseu: "American Decorative Arts",
      colecao: "Pinturas",
    ),
    Art(
      id: 4, 
      imagem: "images/img4.jpg", 
      title: "Corridor in the Asylum",
      nomeArtista: "Vincent van Gogh's",
      periodo: "Dynasty",
      cultura: "American",
      nomeMuseu: "Drawings and Prints",
      colecao: "Pinturas",
    ),
  ];
}