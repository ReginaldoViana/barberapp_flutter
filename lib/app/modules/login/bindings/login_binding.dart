import 'package:cashedu/app/data/providers/login.provider.dart';
import 'package:cashedu/app/data/repositories/login.repository.dart';
import 'package:cashedu/app/modules/login/controllers/login.controller.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<LoginRepository>(() => LoginRepository());
    Get.lazyPut<LoginProvider>(() => LoginProvider());
  }
}