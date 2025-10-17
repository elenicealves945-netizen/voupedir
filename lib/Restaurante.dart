 import 'usuario.dart';
   import 'Tipo.dart';


class Restaurante{

      int? _codigo;
      String? _nome;
      String? _latitude;
      String? _longitude;
      String? _proprietario;
      String? _tipo ;

   Restautarante({int? codigo, String? nome, String? latitude, String? longitude, Usuario? proprietario, Tipo? culinaria }){
     _codigo= codigo;
     _nome = nome;
     _latitude = latitude;
     _longitude = longitude;
     _proprietario = proprietario;
     _tipo = tipo;
  }
      //getters
      //metodo set ao estilo dart
      int? get codigo => _codigo;
      String? get nome => _nome;
      String? get latitude => _latitude;
      String? get longitude => _longitude;
      String? get proprietario => _proprietario;
      String? get tipo => _tipo;

      //setters
      //metodo get ao estilo dart
      set codigo(int? codigo) => _codigo = codigo;
      set nome(String? nome) => _nome = nome;
      set latitude(String? latitude) => _latitude = latitude;
      set longitude(String? longitude) => _longitude = longitude;
      set proprietario(Usuario? proprietario) => _proprietario = proprietario;
      set culinaria(Tipo? culinaria)=> _culinaria = culinaria;

}
