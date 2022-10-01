// import 'package:get/get.dart';
// import 'package:jornadagetx_statemixin/models/cep_model.dart';
// import 'package:jornadagetx_statemixin/repository/viacep_repository.dart';

// class HomeController extends GetxController {
//   final ViacepRepository _viacepRepository;

//   HomeController({required ViacepRepository viacepRepository})
//       : _viacepRepository = viacepRepository;

//   final _cepSearch = ''.obs;
//   set cepSearch(String value) {
//     _cepSearch(value);
//   }

//   final _cep = Rxn<CepModel>();
//   CepModel? get cep => _cep.value;

//   final _loading = false.obs;
//   bool get loading => _loading.value;

//   final _error = false.obs;
//   bool get error => _error.value;

//   Future<void> findAddress() async {
//     try {
//       _error(false);
//       _loading(true);
//       2.seconds.delay();
//       final cep = await _viacepRepository.getCep(_cepSearch.value);
//       _cep(cep);
//     } catch (e) {
//       _error(true);
//     } finally {
//       _loading(false);
//     }
//   }
// }
