import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornadagetx_statemixin/models/cep_model.dart';
import 'package:jornadagetx_statemixin/pages/home_controller_state_mixin.dart';

class HomePage extends StatelessWidget {
  final controller = Get.find<HomeControllerStateMixin>();
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buscar Endereço por CEP'),
      ),
      body: Center(
        child: Column(children: [
          TextFormField(
            onChanged: (value) {
              controller.cepSearch = value;
            },
          ),
          ElevatedButton(
            onPressed: () {
              controller.findAddress();
            },
            child: const Text('Buscar'),
          ),
          controller.obx(
            (state) => CepWidget(cepModel: state),
            onEmpty: const Text('Nenhum CEP encontrado'),
            onLoading: const Text('Buscando...'),
            onError: (error) => const Text('Erro ao buscar CEP'),
          )
          // Obx(() => Visibility(
          //       visible: controller.loading,
          //       child: const Center(
          //         child: CircularProgressIndicator(),
          //       ),
          //     )),
          // Obx(() => Visibility(
          //       visible: controller.error,
          //       child: const Center(
          //         child: Text('Erro ao buscar CEP'),
          //       ),
          //     )),
          // const SizedBox(height: 20),
          // Obx(
          //   () => Visibility(
          //       visible: !controller.loading,
          //       child: CepWidget(cepModel: controller.cep)),
          // ),
        ]),
      ),
    );
  }
}

class CepWidget extends StatelessWidget {
  final CepModel? cepModel;
  const CepWidget({super.key, required this.cepModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('CEP: ${cepModel?.cep ?? "..."}'),
        Text('Cidade: ${cepModel?.cidade ?? "..."}'),
        Text('Rua: ${cepModel?.logradouro ?? "..."}'),
        Text('UF: ${cepModel?.uf ?? "..."}'),
      ],
    );
  }
}
