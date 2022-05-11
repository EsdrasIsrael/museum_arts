import './art.dart';

class Museu {
  String nome;
  double id;
  List<Art> arts;
  String localizacao;

  Museu({
    required this.nome,
    required this.id,
    required this.arts,
    required this.localizacao,
  });
}