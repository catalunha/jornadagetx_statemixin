import 'dart:developer';

import 'package:get/get.dart';
import 'package:jornadagetx_statemixin/models/cep_model.dart';

class ViacepRepository extends GetConnect {
  Future<CepModel> getCep(String cep) async {
    final result = await get('http://viacep.com.br/ws/$cep/json');
    if (result.hasError) {
      log('Erro ao buscar CEP', error: result.statusText);
      throw Exception('Erro ao buscar CEP');
    }
    return CepModel.fromMap(result.body);
  }
}
