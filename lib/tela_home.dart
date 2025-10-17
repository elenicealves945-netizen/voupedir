       import 'package:flutter/material.dart';
       import 'tela_cad_restaurante.dart';

         class TelaHome extends StatelessWidget {
           TelaHome({super.key});

           @override
           State<TelaHome> createState() => TelaHomeState();
         }

         class TelaHomeState extends State<TelaHome>{

           @override
           Widget build(BuildContext context) {
             return Scaffold(
               appBar: AppBar(title: const Text('Seja bem vindo Usuário:')),
               body: Padding(padding: const EdgeInsets.all(10),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Lista de restaurantes"),
                     ElevatedButton(onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => TelaCadRestaurante()));
                     }, child: Text("Cadastrar Novo Restaurante")),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Column(
                           children: [
                             Text("Meu restaurante"),
                             Text("Comida Mexicana")
                           ],
                         ),
                         SizedBox(width: 10),
                         ElevatedButton(onPressed:(){}, child: Text("Excluir")),
                         SizedBox(width: 10),
                         ElevatedButton(onPressed: () {}, child: Text("Editar"))
                       ],
                     ) //Row
                   ],
                 ),
               ),
             ); //Scaffold
           }

           @override
           State<TelaHome> createState() {
  }
         }





