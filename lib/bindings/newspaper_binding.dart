// bindings/sample_binding.dart

import 'package:get/get.dart';
import 'package:herculismobile/controllers/newspaper_controller.dart';

class NewspaperBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NewspaperController());
  }
}
