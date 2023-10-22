// bindings/sample_binding.dart

import 'package:get/get.dart';
import 'package:herculismobile/controllers/create_newspaper_controller.dart';

class CreateNewspaperBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateNewspaperController());
  }
}
