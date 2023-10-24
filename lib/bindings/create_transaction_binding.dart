// bindings/sample_binding.dart

import 'package:get/get.dart';
import 'package:herculismobile/controllers/create_transaction_controller.dart';

class CreateTransactionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateTransactionController());
  }
}
