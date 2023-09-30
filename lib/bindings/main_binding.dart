// bindings/sample_binding.dart

import 'package:get/get.dart';
import 'package:herculismobile/controllers/main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainController());
  }
}
