import 'package:get/get.dart';
import 'package:jornadagetx_statemixin/models/cep_model.dart';
import 'package:jornadagetx_statemixin/repository/viacep_repository.dart';

class HomeControllerStateMixin extends GetxController
    with StateMixin<CepModel> {
  final ViacepRepository _viacepRepository;

  HomeControllerStateMixin({required ViacepRepository viacepRepository})
      : _viacepRepository = viacepRepository;

  final _cepSearch = ''.obs;
  set cepSearch(String value) {
    _cepSearch(value);
  }

  final _cep = Rxn<CepModel>();
  CepModel? get cep => _cep.value;

  @override
  void onReady() {
    change(state, status: RxStatus.success());
    super.onReady();
  }

  Future<void> findAddress() async {
    try {
      change(state, status: RxStatus.loading());
      2.seconds.delay();
      final cep = await _viacepRepository.getCep(_cepSearch.value);
      _cep(cep);
      change(cep, status: RxStatus.success());
    } catch (e) {
      change(state, status: RxStatus.error());
    }
  }
}
