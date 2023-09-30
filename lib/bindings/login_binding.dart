// bindings/sample_binding.dart

import 'package:get/get.dart';
import 'package:herculismobile/controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
