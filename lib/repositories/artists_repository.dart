import 'package:museum_arts/models/art.dart';
import 'package:museum_arts/models/artist.dart';
import 'package:museum_arts/models/museum.dart';
import 'package:museum_arts/repositories/museum_repository.dart';

class ArtistsRepository {

  static List<Artist> tabelaArtists = [
    Artist(
      id: 1, 
      nome: "Vincent van Gogh's", 
      displayBio: "Japanese, 1643–1682",
      genero: "Masculino",
    ),
];
}