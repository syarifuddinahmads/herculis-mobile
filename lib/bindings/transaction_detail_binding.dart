// bindings/sample_binding.dart

import 'package:get/get.dart';
import 'package:herculismobile/controllers/transaction_detail_controller.dart';

class TransactionDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransactionDetailController());
  }
}
