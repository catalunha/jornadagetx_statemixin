import 'package:get/get.dart';
import 'package:jornadagetx_statemixin/repository/viacep_repository.dart';

class HomeController extends GetxController {
  final ViacepRepository _viacepRepository;

  HomeController({required ViacepRepository viacepRepository})
      : _viacepRepository = viacepRepository;
}
