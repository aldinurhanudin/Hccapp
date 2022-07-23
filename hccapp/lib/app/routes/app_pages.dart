import 'package:get/get.dart';
import 'package:hccapp/app/modules/home/bindings/home_binding.dart';
import 'package:hccapp/app/modules/home/views/home_view.dart';
import 'package:hccapp/ui/pages/pages.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => SplashPage(),
      binding: HomeBinding(),
    ),
  ];
}
