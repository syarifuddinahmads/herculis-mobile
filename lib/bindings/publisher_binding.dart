// bindings/sample_binding.dart

import 'package:get/get.dart';
import 'package:herculismobile/controllers/publisher_controller.dart';

class PublisherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PublisherController());
  }
}
