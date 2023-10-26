// bindings/sample_binding.dart

import 'package:get/get.dart';
import 'package:herculismobile/controllers/detail_transaction_controller.dart';

class DetailTransactionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailTransactionController());
  }
}
