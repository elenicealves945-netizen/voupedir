
import 'package:sqflite/sqflite.dart';
import 'package:voupedir/banco/database_helper.dart';

import '../restaurante.dart';

  class restauranteDAO {

    static Future<List<Restaurante>> listarTodos() async {
      final db = await DatabaseHelper.getDatabase();
      final resultado = await db.query('tb_restaurante');
         where: 'cd_usuario = ?',
         whereArgs:
      return resultado.map((mapa)){
         return Restaurante(
            codigo: mapa['cd_restaurante'] as int,
            nome: mapa['nm_restaurante'] as String
         );
      }). tolist() ;
    }

    static Future<int>cadastrarRestaurante(
        String? nomeRestaurante,
        String? latitude,
        String? longitude,
        int? tipo
        ) async {
      final db = await DatabaseHelper.getDatabase();
      final dadosRestaurante = {
        'cd_tipo': tipo,
        'nm_restaurante': nomeRestaurante,
        'latitude_retaurante': latitude,
        'longitude_restaurante'longitude,
        'cd_usuario': UsuarioDAO.usuarioLogado.codigo
      };
      try {
        final idRestaurante = await db.insert(
            'tb_restaurante', dadosRestaurante);
        return idRestaurante;
      } catch (e) {
        print("Erro ao cadastrar restaurante: $e");
        return -1;
      }

    }

  }
