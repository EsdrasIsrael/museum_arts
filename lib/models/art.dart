import './artist.dart';
import './museum.dart';

class Art {
  double id;
  String imagem;
  String title;
  Artist artista;
  String periodo;
  Museu museu;
  String cultura;
  String colecao;

  Art({
    required this.id,
    required this.imagem,
    required this.title,
    required this.artista,
    required this.periodo,
    required this.museu,
    required this.cultura,
    required this.colecao,
  });
}