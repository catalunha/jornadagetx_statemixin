import 'package:get/get.dart';
import 'package:jornadagetx_statemixin/pages/home_controller_state_mixin.dart';
import 'package:jornadagetx_statemixin/repository/viacep_repository.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ViacepRepository());
    Get.put(HomeControllerStateMixin(viacepRepository: Get.find()));
    // Get.put(HomeController(viacepRepository: Get.find()));
  }
}
