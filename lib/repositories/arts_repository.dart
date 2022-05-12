import 'package:museum_arts/models/art.dart';

class ArtsRepository {

  static List<Art> tabelaArts = [
    Art(
      id: 1, 
      imagem: "images/Wheat-Field-with-Cypresses.jpg", 
      title: "Quail and Millet",
      nomeArtista: "Vincent van Gogh's",
      periodo: "Edo period (1615–1868)",
      cultura: "Japan",
      nomeMuseu: "Asian Art",
      colecao: "Pinturas",
    ),
    Art(
      id: 2, 
      imagem: "images/Wheat-Field-with-Cypresses.jpg", 
      title: "Quail",
      nomeArtista: "Vincent van Gogh's",
      periodo: "Edo period (1615–1868)",
      cultura: "Japan",
      nomeMuseu: "Asian Art",
      colecao: "Pinturas",
    ),
    Art(
      id: 3, 
      imagem: "images/Wheat-Field-with-Cypresses.jpg", 
      title: "Millet",
      nomeArtista: "Vincent van Gogh's",
      periodo: "Edo period (1615–1868)",
      cultura: "Japan",
      nomeMuseu: "Asian Art",
      colecao: "Pinturas",
    ),
  ];
}