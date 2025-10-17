import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Restaurante.dart';
import 'package:untitled/Tipo.dart';


class TelaCadRestaurante extends StatelessWidget {
  TelaCadRestaurante({super.key});

     @override
     State<StatefulWidget> createState(){
        return TelaCadRestaurante();

     }
  }

  class TelaCadRestauranteState extends State<TelaCadRestaurante>{

    final TextEditingController nomeController = TextEditingController();
    final TextEditingController latitudeController = TextEditingController();
    final TextEditingController longitudeController = TextEditingController();
    String? culinariaSelecionada;

    List<Tipo> tipoCulinaria = [];
    int? tipoCulinaria;

    void initState(){
      super.initState();
      carregarTipos();
    }

    Future<void> carregarTipos()async{
      final lista = await tipo_DAO.listarTipos();
      setState(() {
        tipoCulinaria = lista;
      });
    }

    @override
  Widget build(BuildContext){
  return Scaffold(
    appBar: AppBar(title: const Text('Cadastro de Restaurante')),
    body: Padding(padding:const EdgeInsets.all(24),
    child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Text("Informações do Restaurante:"),
         SizedBox(height: 30),
         Text("Tipo de Comida: "),
         DropdwnButtonFormField<String>(
            value: culinariaSelecionada,
            items: tipoCulinaria.map((tipo){
              return DropdownMenu<String>(
                 value:tipo.nome,
                 child: text ("${tipo.nome}"),
              );
            }).tolist(),
            onChanged: (String? novaCulinaria) {
              setState(() {
                culinariaSelecionada = novaCulinaria;
                Tipo tipoSelecionado = tipoCulinaria.firstwere(
                 (tipo) => tipo.nome == novaCulinaria,
                );
                tipoCulinaria = tipoSelecionado.codigo;
              });
            }),

               TextFormField(
                decoration: const InputDecoration(
                   hintText: 'Nome do Restaurante'),
                   validator: (String? value){

},controller: nomeController,
),
TextField(
   decoration: const InputDecoration(hintText: 'Latitude'),
   validator: (String? value) {
     controller: latitudeController,

TextFormField(
       decoration:const InputDecoration(hintText: 'Latitude'),
       validator: (String? value) {},
       controller; latitudeController,
),  //TextFormField
TextFormField(
      decoration: const InputDecoration(hintText: 'Longitude'),
      validator: (String? value){}
      controller: longitudeController,
),    //TextFormField
      SizedBox

vali

onPressed: () async{
final sucesso = await RestauranteDAO.cadastrarRestaurante(
nomeController.text
latitudeController.text
longitudeController.text
tipoCulinaria
);
String msg = 'Erro: restaurante não cadastrado.';
Color corFundo = Colors.red;
if(sucesso>0){
//sucesso é o ID do restaurante dadastrado, que será maior que 0(zero//)

msg = '"${nomeController.text}"cadastrado! ID: $sucesso';
Color corFundo = Colors.green;
}
ScaffoldMessenger.of(context).showSnackBar(
SnackBar(
content: Text(msg),
backgroundColor: corFundo,
duratin: Duration(seconds: 5),
) //SnackBar
);
},
child: Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
            Icon(icons.save),
            Text("Cadastrar")
            ],
            )