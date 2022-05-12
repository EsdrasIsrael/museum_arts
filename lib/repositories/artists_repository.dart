import 'package:museum_arts/models/artist.dart';

class ArtistsRepository {

  static List<Artist> tabelaArtists = [
    Artist(
      id: 1, 
      nome: "Vincent van Gogh's", 
      displayBio: "Dutch, Zundert 1853–1890",
      genero: "Masculino",
    ),
    Artist(
      id: 2, 
      nome: "Auguste Renoir", 
      displayBio: "French, Limoges 1841–1919",
      genero: "Masculino",
    ),
    Artist(
      id: 3, 
      nome: "Claude Monet", 
      displayBio: "French, Paris 1840–1926",
      genero: "Masculino",
    ),
    Artist(
      id: 4, 
      nome: "William Stanley", 
      displayBio: "American, Philadelphia, Pennsylvania 1835–1900",
      genero: "Masculino",
    ),
];
}