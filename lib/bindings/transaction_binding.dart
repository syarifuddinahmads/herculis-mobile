// bindings/sample_binding.dart

import 'package:get/get.dart';
import 'package:herculismobile/controllers/transaction_controller.dart';

class TransactionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransactionController());
  }
}
