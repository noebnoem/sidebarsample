import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:sidebarsample/xcore.dart';
part 'app_route.dart';

class AppPages {
  static const init = Routes.init;
  static final routes = [
  GetPage(
  name: Routes.init,
  page: () => const HomeScreen(),
  ),
  ];
}