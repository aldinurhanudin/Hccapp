import 'package:get/get.dart';
import 'package:hccapp/ui/pages/home/payslip/modules/bindings/payslip_binding.dart';
import 'package:hccapp/ui/pages/pages.dart';

part 'payslip_routes.dart';

class PayslipPages {
  PayslipPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => SplashPage(),
      binding: PayslipBinding(),
    ),
  ];
}
