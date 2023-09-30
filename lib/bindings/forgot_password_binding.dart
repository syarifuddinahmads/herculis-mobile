// bindings/sample_binding.dart

import 'package:get/get.dart';
import 'package:herculismobile/controllers/forgot_password_controller.dart';

class ForgotPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotPasswordController());
  }
}
