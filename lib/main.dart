import 'package:flutter/material.dart';
import 'tela_home.dart';
import 'tela_login.dart';
import 'usuario.dart';
import 'restaurante.dart';
import 'tipo.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    /*Usuario U = Usuario(
     codigo:1,
     login: "Elenice123",
     nome: "Elenice",
     senha: "@senhaforte123"
      );*/

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Telalogin(),
    );

  }
}

