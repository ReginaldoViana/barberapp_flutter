import 'package:cashedu/app/modules/home/views/home.view.dart';
import 'package:cashedu/app/modules/login/bindings/login_binding.dart';
import 'package:cashedu/app/modules/login/views/login_view.dart';
import 'package:cashedu/routes/routes.dart';
import 'package:get/get.dart';

class AppPages {

  static const INITIAL = Routes.INITIAL;

  static final routes = [
   /* GetPage(
      name: Routes.INITIAL,
      //page: () => InitialView(),
      //binding: InitialBinding(),
    ),*/
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
        name: Routes.HOME,
        page: () => HomeView(),
      //binding: HomeBinding(),
    ),
  ];
}