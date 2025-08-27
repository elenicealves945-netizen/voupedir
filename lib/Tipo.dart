class Tipo {
  int? _codigo;
  String? _nome;

  tipo({int? codigo, String? nome}) {
    _codigo = codigo;
    _nome = nome;
  }


  //metodo get ao estilo dart
  int? get codigo => _codigo;

  String? get nome => _nome;


  //metodo set ao estilo dart
  set nome(String? nome) => _nome = nome;

  set codigo(int? codigo) => _codigo = codigo;
}

