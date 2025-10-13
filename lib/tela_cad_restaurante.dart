import 'package:flutter/material.dart';
import 'package:flutter/';
import 'package:untitled/Restaurante.dart';


class TelaCadRestaurante extends StateFulWidget {
  TelaCadRestaurante({super.key});

  @override
  State<StatefulWidget> createState() {
    return TelaCadRestaurante();
  }
}
class TelaCadRestauranteState extends State<TelaCadRestaurante>{

  final TextEditingController nomeController = TextEditingController();
  final TextEditingController latitudeController = TextEditingController();
  final TextEditingController longitudeController = TextEditingController();
  String? culinariaSelecionada;

  List<Tipo> tipo
}


  return Scaffold(
    appBar: AppBar(title: const Text('Cadastro de Restaurante')),
    body Padding: const EdgeInsets.all(24),
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
                 value:tipo.descricao,
                 child: text ("${tipo.descricao}"),
              );
            }).tolist(),
            onChanged: (String? novaCulinaria) {
              culinariaselecionada = value;
}
),

TextFormField(
   decoration: const InputDecoration(hintText:'Nome do restaurante'),
)

]


)

)














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