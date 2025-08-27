 import 'usuario.dart';
   import 'Tipo.dart';


class Restaurante{
      int? _codigo;
      String? _nome;
      String? _latitude;
      String? _longitude;
      Usuario? _proprietario;
      Tipo? _culinaria ;

   Restautarante({int? codigo, String? nome, String? latitude, String? longitude, Usuario? proprietario, Tipo? culinaria }){

     _codigo= codigo;
     _nome = nome;
     _latitude = latitude;
     _longitude = longitude;
     _proprietario = proprietario;
     _culinaria = culinaria;
  }
     //metodo set ao estilo dart
      set nome(String? nome) => _nome = nome;
      set codigo(int? codigo) => _codigo = codigo;
      set latitude(String? latitude) => _latitude = latitude;
      set longitude(String? longitude) => _longitude = longitude;
      set proprietario(Usuario? proprietario) => _proprietario = proprietario;
      set culinaria(Tipo? culinaria)=> _culinaria = culinaria;


      //metodo get ao estilo dart
      String? get nome => _nome;
      int? get codigo => _codigo;
      String? get latitude => _latitude;
      String? get longitude => _longitude;
      Usuario? get proprietario => _proprietario;
      Tipo? get culinaria=> _culinaria;

}
