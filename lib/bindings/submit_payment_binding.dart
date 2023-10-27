import 'package:get/get.dart';
import 'package:herculismobile/controllers/submit_payment_controller.dart';

class SubmitPaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SubmitPaymentController());
  }
}
