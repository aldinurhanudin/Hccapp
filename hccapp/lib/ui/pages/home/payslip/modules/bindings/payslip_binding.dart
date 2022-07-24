import 'package:get/get.dart';

import '../controllers/payslip_controller.dart';

class PayslipBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PayslipController>(
      () => PayslipController(),
    );
  }
}