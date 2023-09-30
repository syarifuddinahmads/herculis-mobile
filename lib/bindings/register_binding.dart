// bindings/sample_binding.dart

import 'package:get/get.dart';
import 'package:herculismobile/controllers/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterController());
  }
}
