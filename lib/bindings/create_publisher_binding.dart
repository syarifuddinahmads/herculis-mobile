// bindings/sample_binding.dart

import 'package:get/get.dart';
import 'package:herculismobile/controllers/create_publisher_controller.dart';

class CreatePublisherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreatePublisherController());
  }
}
